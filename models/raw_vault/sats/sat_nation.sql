{%- set yaml_metadata -%}
source_model: v_stg_nation
src_pk: NATION_PK
src_hashdiff: NATION_HASHDIFF
src_payload:
    - NATION_KEY
    - NATION_NAME
    - REGION_KEY
src_eff: EFFECTIVE_FROM
src_ldts: LOAD_DATETIME
src_source: RECORD_SOURCE
{%- endset -%}
{% set metadata_dict = fromyaml(yaml_metadata) %}
{{ dbtvault.sat(src_pk=metadata_dict["src_pk"],
                src_hashdiff=metadata_dict["src_hashdiff"],
                src_payload=metadata_dict["src_payload"],
                src_eff=metadata_dict["src_eff"],
                src_ldts=metadata_dict["src_ldts"],
                src_source=metadata_dict["src_source"],
                source_model=metadata_dict["source_model"]) }}
