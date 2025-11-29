package data

#google_dataplex_data_quality_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_dataplex_data_quality_rules")
	close({
		data_scan_id!: string
		id?:           string
		location?:     string
		project?:      string
		rules?: [...close({
			column?:      string
			description?: string
			dimension?:   string
			ignore_null?: bool
			name?:        string
			non_null_expectation?: [...close({})]
			range_expectation?: [...close({
				max_value?:          string
				min_value?:          string
				strict_max_enabled?: bool
				strict_min_enabled?: bool
			})]
			regex_expectation?: [...close({
				regex?: string
			})]
			row_condition_expectation?: [...close({
				sql_expression?: string
			})]
			set_expectation?: [...close({
				values?: [...string]
			})]
			sql_assertion?: [...close({
				sql_statement?: string
			})]
			statistic_range_expectation?: [...close({
				max_value?:          string
				min_value?:          string
				statistic?:          string
				strict_max_enabled?: bool
				strict_min_enabled?: bool
			})]
			suspended?: bool
			table_condition_expectation?: [...close({
				sql_expression?: string
			})]
			threshold?: number
			uniqueness_expectation?: [...close({})]
		})]
	})
}
