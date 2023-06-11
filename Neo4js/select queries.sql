SELECT evs.name AS recolection_site,
    cit.name AS city,
    SUM(wi.quantity) AS total_ammount_collected,
    dist.name AS collection_site_district,
    addr.zip_code AS zip_code
FROM wastes_inventories wi 
	JOIN ev_sites evs ON evs.ev_site_id = wi.ev_site_id
	JOIN addresses addr ON addr.address_id = evs.address_id
	JOIN districts dist ON dist.district_id = addr.district_id
	JOIN cities cit ON cit.city_id = dist.city_id
GROUP BY evs.name, cit.name, dist.name, addr.zip_code
ORDER BY evs.name, cit.name, total_ammount_collected, dist.name, addr.zip_code;



SELECT evs.name AS recolection_site,
	   cr.name AS route_name,
       SUM(wi.quantity) AS total_ammount_collected      
FROM wastes_inventories wi 
	JOIN ev_sites evs ON evs.ev_site_id = wi.ev_site_id
	JOIN contract_terms ct On ct.contract_term_id = wi.contract_term_id
	JOIN collection_cycles cc ON cc.collection_cycle_id = ct.collection_cycle_id
	JOIN collection_routes cr ON cr.collections_route_id = cc.collection_route_id
GROUP BY evs.name, cr.name
ORDER BY evs.name, cr.name, total_ammount_collected;



SELECT evs.name AS recolection_site,
	   prod.name AS producer,
       SUM(wi.quantity) AS total_ammount_collected      
FROM wastes_inventories wi 
	JOIN ev_sites evs ON evs.ev_site_id = wi.ev_site_id
	JOIN contract_terms ct On ct.contract_term_id = wi.contract_term_id
	JOIN producers prod ON prod.producer_id = ct.producer_id
GROUP BY evs.name, prod.name
ORDER BY evs.name, prod.name, total_ammount_collected;


SELECT evs.name AS recolection_site,
	   ac.name AS alternative_collector,
       SUM(wi.quantity) AS total_ammount_collected      
FROM wastes_inventories wi 
	JOIN ev_sites evs ON evs.ev_site_id = wi.ev_site_id
	JOIN contract_terms ct On ct.contract_term_id = wi.contract_term_id
	JOIN alt_collectors ac ON ac.alt_collector_id = ct.alt_collector_id
GROUP BY evs.name, ac.name
ORDER BY evs.name, ac.name, total_ammount_collected;


SELECT evs.name AS recolection_site,
	   evc.name AS esencial_verde_collector,
       SUM(wi.quantity) AS total_ammount_collected      
FROM wastes_inventories wi 
	JOIN ev_sites evs ON evs.ev_site_id = wi.ev_site_id
	JOIN contract_terms ct On ct.contract_term_id = wi.contract_term_id
	JOIN ev_collectors evc ON evc.ev_collector_id = ct.ev_collector_id
GROUP BY evs.name, evc.name
ORDER BY evs.name, evc.name, total_ammount_collected;
