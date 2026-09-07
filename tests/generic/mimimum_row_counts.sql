{% test minimum_row_counts(model, min_rows) %}
    select count(*) as row_count
    from {{ model }}
    Having count(*) < {{ min_rows }}
{% endtest %}