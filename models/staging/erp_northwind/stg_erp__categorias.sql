with
    source_categories as (
        select
            cast(category_name as string) as nome_categoria
            , cast(category_id as int) as id_categoria
            --, description
            --, picture
        from
            {{ source('erp', 'categories') }}
    )

select * from source_categories