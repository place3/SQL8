COMMENT ON TABLE person_discounts IS 
    'personal discounts';

COMMENT ON COLUMN person_discounts.id IS 
    'discount id';

COMMENT ON COLUMN person_discounts.person_id IS 
    'link to person for who discount';

COMMENT ON COLUMN person_discounts.pizzeria_id IS 
    'pizzeria link';

COMMENT ON COLUMN person_discounts.discount IS 
    'discount size';
