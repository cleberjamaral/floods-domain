(in-package :shop2-user)
(defproblem p04 floods
   (
    ;;;
    ;;;  facts
    ;;;
    (robot uav1)
    (robot uav2)
    (robot uav3)
    (robot uav4)
    (robot uav5)
    (robot uav6)
    (robot ugv1)
    (robot ugv2)
    (robot ugv3)
    (robot ugv4)
    (robot ugv5)
    (robot ugv6)
    (robot usv1)
    (robot usv2)
    (robot usv3)
    (robot usv4)
    (robot usv5)
    (robot usv6)
    (uav uav1)
    (uav uav2)
    (uav uav3)
    (uav uav4)
    (uav uav5)
    (uav uav6)
    (ugv ugv1)
    (ugv ugv2)
    (ugv ugv3)
    (ugv ugv4)
    (ugv ugv5)
    (ugv ugv6)
    (usv usv1)
    (usv usv2)
    (usv usv3)
    (usv usv4)
    (usv usv5)
    (usv usv6)
    (area area1)
    (area area2)
    (area area3)
    (area area4)
    (area area5)
    (area area6)
    (area area7)
    (area area8)
    (area area9)
    (area area10)
    (area area11)
    (area area12)
    (area area13)
    (area area14)
    (area area15)
    (area area16)
    (area area17)
    (area area18)
    (area area19)
    (area area20)
    (area area21)
    (area area22)
    (area area23)
    (area area24)
    (area area25)
    (area area26)
    (area area27)
    (area area28)
    (area area29)
    (area area30)
    (disaster disaster1)
    (disaster disaster2)
    (disaster disaster3)
    (disaster disaster4)
    (disaster disaster5)
    (disaster disaster6)
    (disaster disaster7)
    (disaster disaster8)
    (cdm cdm1)
    (cdm cdm2)
    (cdm cdm3)
    (store ugv1Store)
    (store ugv2Store)
    (store ugv3Store)
    (store ugv4Store)
    (store ugv5Store)
    (store ugv6Store)
    (store usv1Store)
    (store usv2Store)
    (store usv3Store)
    (store usv4Store)
    (store usv5Store)
    (store usv6Store)
    (box box1)
    (box box2)
    (box box3)
    (box box4)
    (box box5)
    
    ;;;
    ;;;  initial states
    ;;;
	(at uav1 area1)
	(at uav2 area1)
	(at uav3 area13)
	(at uav4 area13)
	(at uav5 area21)
	(at uav6 area21)
	(at ugv1 area1)
	(at ugv2 area1)
	(at ugv3 area13)
	(at ugv4 area13)
	(at ugv5 area21)
	(at ugv6 area21)
	(at usv1 area1)
	(at usv2 area1)
	(at usv3 area13)
	(at usv4 area13)
	(at usv5 area21)
	(at usv6 area21)
	(store_of ugv1Store ugv1)
	(store_of ugv2Store ugv2)
	(store_of ugv3Store ugv3)
	(store_of ugv4Store ugv4)
	(store_of ugv5Store ugv5)
	(store_of ugv6Store ugv6)
	(store_of usv1Store usv1)
	(store_of usv2Store usv2)
	(store_of usv3Store usv3)
	(store_of usv4Store usv4)
	(store_of usv5Store usv5)
	(store_of usv6Store usv6)

	(cdm_at cdm1 area1)
	(cdm_at cdm2 area13)
	(cdm_at cdm3 area21)
	(empty ugv1Store)
	(empty ugv2Store)
	(empty ugv3Store)
	(empty ugv4Store)
	(empty ugv5Store)
	(empty ugv6Store)
	(empty usv1Store)
	(empty usv2Store)
	(empty usv3Store)
	(empty usv4Store)
	(empty usv5Store)
	(empty usv6Store)

	(box_at_cdm box1 cdm1)
	(box_at_cdm box2 cdm2)
	(box_at_cdm box3 cdm1)
	(box_at_cdm box4 cdm3)
	(box_at_cdm box5 cdm3)
	(water_path area1 area2)
	(water_path area2 area1)
	(water_path area2 area4)
	(water_path area4 area2)
	(water_path area2 area6)
	(water_path area6 area2)
	(water_path area4 area5)
	(water_path area5 area4)
	(water_path area4 area9)
	(water_path area9 area4)
	(water_path area9 area8)
	(water_path area8 area9)
	(water_path area8 area7)
	(water_path area7 area8)
	(water_path area6 area12)
	(water_path area12 area6)
	(water_path area12 area10)
	(water_path area10 area12)
	(water_path area9 area13)
	(water_path area13 area9)
	(water_path area1 area16)
	(water_path area16 area1)
	(water_path area2 area14)
	(water_path area14 area2)
	(water_path area14 area16)
	(water_path area16 area14)
	(water_path area16 area18)
	(water_path area18 area16)
	(water_path area18 area15)
	(water_path area15 area18)
	(water_path area18 area20)
	(water_path area20 area18)
	(water_path area20 area19)
	(water_path area19 area20)
	(water_path area19 area17)
	(water_path area17 area19)

	(water_path area21 area22)
	(water_path area22 area21)
	(water_path area22 area24)
	(water_path area24 area22)
	(water_path area22 area26)
	(water_path area26 area22)
	(water_path area24 area25)
	(water_path area25 area24)
	(water_path area24 area29)
	(water_path area29 area24)
	(water_path area29 area28)
	(water_path area28 area29)
	(water_path area28 area27)
	(water_path area27 area28)
	(water_path area26 area30)
	(water_path area30 area26)

	(water_path area27 area8)
	(water_path area8 area27)
	(water_path area28 area7)
	(water_path area7 area28)

	(ground_path area1 area3)
	(ground_path area3 area1)
	(ground_path area3 area4)
	(ground_path area4 area3)
	(ground_path area3 area5)
	(ground_path area5 area3)
	(ground_path area4 area6)
	(ground_path area6 area4)
	(ground_path area4 area10)
	(ground_path area10 area4)
	(ground_path area10 area7)
	(ground_path area7 area10)
	(ground_path area7 area8)
	(ground_path area8 area7)
	(ground_path area5 area11)
	(ground_path area11 area5)
	(ground_path area11 area9)
	(ground_path area9 area11)
	(ground_path area10 area13)
	(ground_path area13 area10)
	(ground_path area1 area16)
	(ground_path area16 area1)
	(ground_path area3 area15)
	(ground_path area15 area3)
	(ground_path area15 area16)
	(ground_path area16 area15)
	(ground_path area16 area17)
	(ground_path area17 area16)
	(ground_path area14 area17)
	(ground_path area17 area14)	
	(ground_path area18 area20)
	(ground_path area20 area18)
	(ground_path area20 area19)
	(ground_path area19 area20)
	(ground_path area15 area18)
	(ground_path area18 area15)

	(ground_path area21 area23)
	(ground_path area23 area21)
	(ground_path area23 area24)
	(ground_path area24 area23)
	(ground_path area23 area25)
	(ground_path area25 area23)
	(ground_path area24 area26)
	(ground_path area26 area24)
	(ground_path area24 area30)
	(ground_path area30 area24)
	(ground_path area30 area27)
	(ground_path area27 area30)
	(ground_path area27 area28)
	(ground_path area28 area27)
	(ground_path area25 area29)
	(ground_path area29 area25)

	(ground_path area28 area7)
	(ground_path area7 area28)
	(ground_path area27 area8)
	(ground_path area8 area27)

	(visible_from disaster1 area25)
	(visible_from disaster2 area23)
	(visible_from disaster3 area24)
	(visible_from disaster4 area10)
	(visible_from disaster5 area1)
	(visible_from disaster6 area15)
	(visible_from disaster7 area13)
	(visible_from disaster8 area17)

	(in_range area2 area1)
	(in_range area3 area1)
	(in_range area1 area1)
	(in_range area9 area13)
	(in_range area10 area13)
	(in_range area13 area13)

	(in_range area22 area21)
	(in_range area23 area21)
	(in_range area21 area21)
)

(:unordered

(:task get_picture disaster6)
(:task get_picture disaster4)
(:task get_picture disaster2)
(:task get_picture disaster8)
(:task get_picture disaster7)
(:task get_picture disaster3)
(:task deliver_box box5 area9)
(:task deliver_box box3 area20)
(:task get_picture disaster1)
(:task deliver_box box4 area15)
(:task deliver_box box2 area27)
(:task deliver_box box1 area1)
(:task deliver_sample cdm2 area18)
(:task deliver_sample cdm3 area26)
(:task deliver_sample cdm3 area2)
(:task get_picture disaster5)
(:task deliver_sample cdm1 area12)
(:task deliver_sample cdm1 area14)
))

(find-plans 'p04 :verbose :plans)
