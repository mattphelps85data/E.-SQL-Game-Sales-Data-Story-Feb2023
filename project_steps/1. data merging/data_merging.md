
# Data Merging

I imported a video game dataset from Kaggle.

https://www.kaggle.com/datasets/holmjason2/videogamedata
## Import Dataset

Create SQL tables then import in pgAdmin4.

```bash
-- Table: public.game_sales_data

-- DROP TABLE IF EXISTS public.game_sales_data;

CREATE TABLE IF NOT EXISTS public.game_sales_data
(
    rank integer,
    game character varying COLLATE pg_catalog."default",
    console character varying COLLATE pg_catalog."default",
    publisher character varying COLLATE pg_catalog."default",
    developer character varying COLLATE pg_catalog."default",
    critic_score numeric,
    user_score numeric,
    games_sold numeric,
    year character varying COLLATE pg_catalog."default",
    average_score numeric
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.game_sales_data
    OWNER to postgres;
```

