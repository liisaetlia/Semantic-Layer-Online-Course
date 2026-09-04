{% macro find_datatypes(model_name) %}
    {% set relation = ref(model_name) %}
    {% set cols = adapter.get_columns_in_relation(relation) %}

    {% for col in cols %}
        {{ log(
            "- name: " ~ col.name | lower
            ~ "\n  data_type: " ~ col.data_type | lower,
            info=true
        ) }}
    {% endfor %}
{% endmacro %}