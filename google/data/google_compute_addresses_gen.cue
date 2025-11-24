package data

#google_compute_addresses: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_addresses")
	close({
		addresses?: [...close({
			address?:      string
			address_type?: string
			description?:  string
			name?:         string
			region?:       string
			self_link?:    string
			status?:       string
		})]

		// Filter sets the optional parameter "filter": A filter
		// expression that
		// filters resources listed in the response. The expression must
		// specify
		// the field name, an operator, and the value that you want to use
		// for
		// filtering. The value must be a string, a number, or a boolean.
		// The
		// operator must be either "=", "!=", ">", "<", "<=", ">=" or ":".
		// For
		// example, if you are filtering Compute Engine instances, you can
		// exclude instances named "example-instance" by specifying "name
		// !=
		// example-instance". The ":" operator can be used with string
		// fields to
		// match substrings. For non-string fields it is equivalent to the
		// "="
		// operator. The ":*" comparison can be used to test whether a key
		// has
		// been defined. For example, to find all objects with "owner"
		// label
		// use: """ labels.owner:* """ You can also filter nested fields.
		// For
		// example, you could specify "scheduling.automaticRestart =
		// false" to
		// include instances only if they are not scheduled for automatic
		// restarts. You can use filtering on nested fields to filter
		// based on
		// resource labels. To filter on multiple expressions, provide
		// each
		// separate expression within parentheses. For example: """
		// (scheduling.automaticRestart = true) (cpuPlatform = "Intel
		// Skylake")
		// """ By default, each expression is an "AND" expression.
		// However, you
		// can include "AND" and "OR" expressions explicitly. For example:
		// """
		// (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel
		// Broadwell")
		// AND (scheduling.automaticRestart = true) """
		filter?: string

		// The google project in which addresses are listed. Defaults to
		// provider's configuration if missing.
		project?: string
		id?:      string

		// Region that should be considered to search addresses. All
		// regions are considered if missing.
		region?: string
	})
}
