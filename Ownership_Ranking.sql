select property_name, borough, block, lot,
(case when owner_type ='CORPORATION' then concat(owner_first_name,' ',owner_last_name) else 0 end) as corporate_owner_name,
(case when owner_type ='PARTNERSHIP' then concat(owner_first_name,' ',owner_last_name) else 0 end) as partner_owner_name,
(case when owner_type ='CONDO/CO-OP' then concat(owner_first_name,' ',owner_last_name) else 0 end) as condo_owner_name,
(case when owner_type ='INDIVIDUAL' then concat(owner_first_name,' ',owner_last_name) else 0 end) as individual_owner_name,
(case when owner_type ='OTHER' then concat(owner_first_name,' ',owner_last_name) else 0 end) as other_owner_name
from new_table