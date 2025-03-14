subroutine windrisk(siteInfoDist, spec, h, openedge, sitetype, tsum, tsincethin, &
  wrisk5dd1, wrisk5dd2, wrisk5dd3, wrisk0, wrisk5, wrisk)
  IMPLICIT NONE
  REAL (kind=8), intent(inout) ::  siteInfoDist(10) ! 5-year wind risk (suvanto output), pre-logit value, annual risk
  REAL (kind=8), intent(inout) ::  wrisk5, wrisk0, wrisk ! 5-year wind risk (suvanto output), pre-logit value, annual risk
  REAL (kind=8), intent(inout) :: wrisk5dd1, wrisk5dd2, wrisk5dd3 !5-year wind risk of each damage density class
  REAL (kind=8), intent(in) :: h ! input in m, converted to dm
  REAL (kind=8), intent(in) :: tsum ! effective temperature sums (degree days over 5°C); converted to 100 dd
  INTEGER, intent(in) :: spec !1 pine, 2 spruce, 3 other
  INTEGER, intent(in) :: openedge ! 0 = no open edge, 1 = open edge
  INTEGER, intent(in) :: sitetype ! prebas site types; reclassified to site fertility: 0 = infertile, 1 = fertile
  REAL (kind=8) :: wspeed ! localised 10 a max windspeed (m/s), Venäläinen 2017
  INTEGER, intent(in) :: tsincethin ! time since last thinning in years, categorised into 0-5, 6-10, >10 below
  INTEGER :: soiltype ! 0 = mineral, coarse; 1 = mineral, fine; 2 = organic
  INTEGER :: shallowsoil ! 1 = <30cm
  INTEGER :: sitefert ! site fertility, reclassified from sitetype (1:3 fertile / 1, 4:5 infertile/0)

  wspeed = siteInfoDist(1)
  !tsincethin = INT(siteInfoDist(2))
  soiltype = INT(siteInfoDist(3))
  shallowsoil = INT(siteInfoDist(4))

    IF (sitetype <= 3) sitefert = 1 !convert sitetypes to fert class
    IF (sitetype > 3) sitefert = 0

    wrisk0 = -14.690 + &
                  LOG(h*10)*1.661 + &
                  LOG(wspeed)*0.749 + &
                  tsum/100*0.096 + &!effective temp sum (100 degree days)
                  openedge * 0.310 + &
                  shallowsoil * 0.214 - &
                  sitefert * 0.425

    !categorical variables with more than two levels externalised:

    !!! time since thinning; reference: 0-5a
    if (tsincethin>5 .AND. tsincethin <= 10) wrisk0 = wrisk0 - 0.298
    if (tsincethin>10)  wrisk0 = wrisk0 - 0.844
    ! soiltype; reference: mineral, coarse
    if (soiltype == 1)  wrisk0 = wrisk0 - 0.356 !mineral, fine
    if (soiltype == 2)  wrisk0 = wrisk0 - 0.216!organic

    !!! species & spec/h interaction (ref: pine/1)
    IF (spec == 2) THEN
      wrisk0 = wrisk0 - 8.494
      wrisk0 = wrisk0 + LOG(h*10)*1.634
    ELSEIF (spec == 3) THEN
      wrisk0 = wrisk0 - 9.314
      wrisk0 = wrisk0 + LOG(h*10)*1.625
    ENDIF

    ! DAMAGE DENSITY (& logit transformation)
    ! spatial density of wind-disturbed NFI plots relative to all NFI plots
    !!! SEE SUPPLEMENTYRY INFO 1 of Suvanto et al. 2019
    ! for prediction, the model is run for each damage density class individually
    ! and a weighted average of the three is used; weights: damdens 0-2,2-3,>3: 0.905, 0.072, 0.023

    !damdens 0-2 (reference)
    wrisk5dd1 = EXP(wrisk0) / (1.0 + EXP(wrisk0)) ! logit transformation of reference
    !damdens 2-3
    wrisk0 = wrisk0 + 1.104
    wrisk5dd2 = EXP(wrisk0) / (1.0 + EXP(wrisk0))
    !damdens >3
    wrisk0 = wrisk0 + 1.898 - 1.104 !to avoid another variable
    wrisk5dd3 = EXP(wrisk0) / (1.0 + EXP(wrisk0))

    wrisk5 = wrisk5dd1 * 0.905 +  wrisk5dd2 * 0.072 + wrisk5dd3 * 0.023 !weighted average
    wrisk = wrisk5/5 ! annual risk

end subroutine


! LEGACY: version with individual inputs; new above: external inputs in wDistSiteInfo
subroutine windriskold(spec, h, tsincethin, wspeed, openedge, soiltype, shallowsoil, sitetype, tsum, &
  wrisk5dd1, wrisk5dd2, wrisk5dd3, wrisk0, wrisk5, wrisk)
  IMPLICIT NONE
  REAL (kind=8), intent(inout) ::  wrisk5, wrisk0, wrisk ! 5-year wind risk (suvanto output), pre-logit value, annual risk
  REAL (kind=8), intent(inout) :: wrisk5dd1, wrisk5dd2, wrisk5dd3 !5-year wind risk of each damage density class
  REAL (kind=8), intent(in) :: h ! input in m, converted to dm
  REAL (kind=8), intent(in) :: wspeed ! localised 10 a max windspeed (m/s), Venäläinen 2017
  REAL (kind=8), intent(in) :: tsum ! effective temperature sums (degree days over 5°C); converted to 100 dd
  INTEGER, intent(in) :: spec !1 pine, 2 spruce, 3 other
  INTEGER, intent(in) :: tsincethin ! time since last thinning in years, categorised into 0-5, 6-10, >10 below
  INTEGER, intent(in) :: openedge ! 0 = no open edge, 1 = open edge
  INTEGER, intent(in) :: soiltype ! 0 = mineral, coarse; 1 = mineral, fine; 2 = organic
  INTEGER, intent(in) :: shallowsoil ! 1 = <30cm
  INTEGER, intent(in) :: sitetype ! prebas site types; reclassified to site fertility: 0 = infertile, 1 = fertile
  INTEGER :: sitefert ! site fertility, reclassified from sitetype (1:3 fertile / 1, 4:5 infertile/0)

    IF (sitetype <= 3) sitefert = 1 !convert sitetypes to fert class
    IF (sitetype > 3) sitefert = 0

    wrisk0 = -14.690 + &
                  LOG(h*10)*1.661 + &
                  LOG(wspeed)*0.749 + &
                  tsum/100*0.096 + &!effective temp sum (100 degree days)
                  openedge * 0.310 + &
                  shallowsoil * 0.214 - &
                  sitefert * 0.425

    !categorical variables with more than two levels externalised:

    !!! time since thinning; reference: 0-5a
    if (tsincethin>5 .AND. tsincethin <= 10) wrisk0 = wrisk0 - 0.298
    if (tsincethin>10)  wrisk0 = wrisk0 - 0.844
    ! soiltype; reference: mineral, coarse
    if (soiltype == 1)  wrisk0 = wrisk0 - 0.356 !mineral, fine
    if (soiltype == 2)  wrisk0 = wrisk0 - 0.216!organic

    !!! species & spec/h interaction (ref: pine/1)
    IF (spec == 2) THEN
      wrisk0 = wrisk0 - 8.494
      wrisk0 = wrisk0 + LOG(h*10)*1.634
    ELSEIF (spec == 3) THEN
      wrisk0 = wrisk0 - 9.314
      wrisk0 = wrisk0 + LOG(h*10)*1.625
    ENDIF

    ! DAMAGE DENSITY (& logit transformation)
    ! spatial density of wind-disturbed NFI plots relative to all NFI plots
    !!! SEE SUPPLEMENTYRY INFO 1 of Suvanto et al. 2019
    ! for prediction, the model is run for each damage density class individually
    ! and a weighted average of the three is used; weights: damdens 0-2,2-3,>3: 0.905, 0.072, 0.023

    !damdens 0-2 (reference)
    wrisk5dd1 = EXP(wrisk0) / (1.0 + EXP(wrisk0)) ! logit transformation of reference
    !damdens 2-3
    wrisk0 = wrisk0 + 1.104
    wrisk5dd2 = EXP(wrisk0) / (1.0 + EXP(wrisk0))
    !damdens >3
    wrisk0 = wrisk0 + 1.898 - 1.104 !to avoid another variable
    wrisk5dd3 = EXP(wrisk0) / (1.0 + EXP(wrisk0))

    wrisk5 = wrisk5dd1 * 0.905 +  wrisk5dd2 * 0.072 + wrisk5dd3 * 0.023 !weighted average
    wrisk = wrisk5/5 ! annual risk

end subroutine





! subroutine prioritiseDistReact(siteOrder, outDist, nsites)
!   IMPLICIT NONE
!   REAL (kind=8), intent(inout) ::  outDist(nSites, 10)
!   INTEGER, intent(inout) ::  siteOrder(nSites)
!   INTEGER, intent(in) :: nSites !1 pine, 2 spruce, 3 o
!
!
! do i = 1, nSites
!   if (outDist(i, 7) == 1) then
!     siteOrder()
!
!
! end do
!
!
! end subroutine
!
! !
! subroutine move_element_to_front(vector, index, n)
!     implicit none
!     integer, intent(inout) :: vector(:)
!     integer, intent(in) :: index, n
!     integer :: temp, i
!
!     ! Check if index is valid
!     if (index < 1 .or. index > n) then
!         print *, "Error: Index out of bounds"
!         return
!     end if
!
!     ! Move the element to the front
!     temp = vector(index)
!     do i = index, 2, -1
!         vector(i) = vector(i-1)
!     end do
!     vector(1) = temp
! end subroutine move_element_to_front


subroutine move_element_to_front(siteorder, index, nsites, siteordertemp)
    implicit none
    integer, intent(inout) :: siteorder(nsites)
    integer, intent(in) :: index, nsites
    integer :: temp, i
    integer, intent(inout) :: siteordertemp(nsites)

    ! Check if index is valid
    if (index < 1 .or. index > nsites) then
        print *, "Error: Index out of bounds"
        return
    end if

    ! Move the element to the front
    siteordertemp(1) = siteorder(index) ! put focus site id to top
    do i = 1, index-1 ! shift all siteids in siteorder prior to index one down
        siteordertemp(i+1) = siteorder(i)
    end do
    siteordertemp((index+1):nsites) = siteorder((index+1):nsites) ! keep remaining siteorder as is
    !vector(1) = temp
end subroutine move_element_to_front


subroutine move_siteid_to_top(siteorder, siteid, nsites, siteordertemp, poutdist)
    implicit none
    integer, intent(inout) :: siteorder(nsites)
    integer, intent(in) :: siteid, nsites
    integer :: temp, i, index(1)
    integer, intent(inout) :: siteordertemp(nsites)
real (kind=8), intent(inout) :: poutdist(nsites, 10)
    !index = findloc(siteorder, siteid) !find location of siteid in question within siteorder
    siteordertemp = abs(siteorder-siteid)
    index = minloc(siteordertemp(:)) !find location of siteid in question within siteorder !! findloc only in fortran 2008 and later, workaround with abs/minloc

    ! Move the element to the front
    siteordertemp(1) = siteorder(index(1)) ! put focus site id to top
    do i = 1, index(1)-1 ! shift all siteids in siteorder prior to index one down
        siteordertemp(i+1) = siteorder(i)
    end do
    siteordertemp((index(1)+1):nsites) = siteorder((index(1)+1):nsites) ! keep remaining siteorder as is
end subroutine move_siteid_to_top

!
! subroutine move_siteid_to_top2(siteorder, siteid, nsites, siteordertemp, poutdist)
!     implicit none
!     integer, intent(inout) :: siteorder(nsites)
!     integer, intent(inout) :: nsites
!     integer :: temp, i, index(1), priosites(nsites), nsitesdist,  siteid
!     integer, intent(inout) :: siteordertemp(nsites)
! real (kind=8), intent(inout) :: poutdist(nsites, 10)
!
!   ! here: finding siteids of distcc-earmarked sites
!   ! for now limited to a single site
!
!     !nsitesdist = sum(poutdist(:,7))
!
!      priosites = findloc(poutdist(:,7), 1)
!
!     siteid = priosites(1)
!
!
!     ! below working if siteid is given
!     !index = findloc(siteorder, siteid) !find location of siteid in question within siteorder
!     siteordertemp = abs(siteorder-siteid)
!     index = minloc(siteordertemp(:)) !find location of siteid in question within siteorder !! findloc only in fortran 2008 and later, workaround with abs/minloc
!
!     ! Move the element to the front
!     siteordertemp(1) = siteorder(index(1)) ! put focus site id to top
!     do i = 1, index(1)-1 ! shift all siteids in siteorder prior to index one down
!         siteordertemp(i+1) = siteorder(i)
!     end do
!     siteordertemp((index(1)+1):nsites) = siteorder((index(1)+1):nsites) ! keep remaining siteorder as is
!
!     nsites = siteid
!
! end subroutine move_siteid_to_top2

subroutine find_row_indexes(matrix, n, row_indexes)
    implicit none
    integer, intent(in) :: matrix(n, 10)
    integer, intent(in) :: n
    integer, intent(inout) :: row_indexes(n)
    integer :: i, count

    count = 0
    do i = 1, n
        if (INT(matrix(i, 7)) == 1) then
            count = count + 1
            row_indexes(count) = i
        end if
    end do

    ! Fill remaining elements of row_indexes with 0
    do i = count + 1, n
        row_indexes(i) = 0
    end do
end subroutine find_row_indexes


subroutine prioDistInSO(outDist, nSites, maxYears, year, siteOrder)
! prioritise sites flagged for management reaction to wind disturbance in siteOrder (annualy randomised site order)
! puts sites flagged for mgmt reaction to disturbance in last year's outDist on top of site order
    implicit none
    integer, intent(in) :: nSites, year, maxYears
    integer, intent(inout) :: siteOrder(nSites,maxYears)! , siteOrderX(nSites)
    real (kind=8), intent(in) :: outDist(nSites, 10)
    integer :: sitexx, distpriositexx, ndistprio, temp, index(1), siteid, siteordertemp(nSites), priosites(nSites)
    ! fill priosites with siteids (outdist in 1:nsites order)
    ndistprio = 0

    do sitexx = 1, nSites
        if (outDist(sitexx, 8) == 1.) then
            ndistprio = ndistprio + 1
            priosites(ndistprio) = sitexx
        end if
    end do
    ! for each of these, put siteid on top and shift those siteids above in sitorder one down
    !write(1,*) ndistprio !tswrite
    ! siteOrder(2,year) = ndistprio !troubleshooting:
    do distpriositexx = 1, ndistprio
      siteid = priosites(distpriositexx)
          siteordertemp = abs(siteOrder(:,year)-siteid)
           index = minloc(siteordertemp(:)) !find location of siteid in question within siteorder !! findloc only in fortran 2008 and later, workaround with abs/minloc
          ! Move the element to the front
          siteordertemp(1) = siteOrder(index(1), year) ! put focus site id to top
          do sitexx = 1, index(1)-1 ! shift all siteids in siteorder prior to index one down
              siteordertemp(sitexx+1) = siteOrder(sitexx, year)
          end do
          siteordertemp((index(1)+1):nsites) = siteOrder((index(1)+1):nsites, year) ! keep remaining siteorder as is
          !siteOrder(1,year) = year+1

          siteOrder(:,year) = siteordertemp(:)
    end do
    ! to see if anything happening here is in output

      end subroutine prioDistInSO
