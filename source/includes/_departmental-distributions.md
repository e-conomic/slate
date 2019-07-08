## Departmental Distributions

<aside class="warning">
This endpoint is experimental and subject to change
</aside>

Departmental Distributions is used to define the relevant department or distribution on applicable entities.
This endpoint serves as the unified approach to distribution whether it be one department or many that the sum will be distributed to.

### <span class='get'>GET</span> /departmental-distributions

This endpoint allows you to fetch a collection of all departmental distributions.

<!_departmental-distributions.get.schema.md!>

### <span class='get'>GET</span> /departmental-distributions/departments

This endpoint allows you to fetch a collection of all departmental distributions that distribute the entire sum to a single department.

<!_departmental-distributions.departments.get.schema.md!>

### <span class='get'>GET</span> /departmental-distributions/departments/:departmentalDistributionNumber

This endpoint allows you to fetch a specific departmental distribution that distributes the entire sum to a single department.

<!_departmental-distributions.departments.departmentalDistributionNumber.get.schema.md!>

### <span class='get'>GET</span> /departmental-distributions/distributions

This endpoint allows you to fetch a collection of all departmental distributions that distribute the sum across multiple departments.

<!_departmental-distributions.distributions.get.schema.md!>

### <span class='get'>GET</span> /departmental-distributions/distributions/:departmentalDistributionNumber

This endpoint allows you to fetch specific departmental distribution that distributes the sum across multiple departments.

<!_departmental-distributions.distributions.departmentalDistributionNumber.get.schema.md!>