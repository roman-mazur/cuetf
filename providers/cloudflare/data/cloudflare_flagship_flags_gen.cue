package data

cloudflare_flagship_flags: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_flagship_flags")
	close({
		// Cloudflare account ID.
		account_id!: string

		// App identifier.
		app_id!: string

		// Max items to return (1–200).
		limit?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Variation served when no rule matches or the flag is disabled. Must be a key in `variations`.
			default_variation?: string

			// Targeting rules evaluated in ascending `priority`; the first matching rule
			// wins. An empty array means the flag always serves `default_variation`.
			rules?: matchN(1, [close({
				// Conditions the context must satisfy for this rule to match. An empty array matches all contexts.
				conditions?: matchN(1, [close({
					attribute?: string
					clauses?: matchN(1, [close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					}), [...close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					})]])

					// Available values: "AND", "OR".
					logical_operator?: string

					// Available values: "equals", "not_equals", "greater_than", "less_than",
					// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
					// "ends_with", "in", "not_in".
					operator?: string

					// Value to compare against the context attribute. Must be an array for `in` and
					// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
					// operators.
					value?: string
				}), [...close({
					attribute?: string
					clauses?: matchN(1, [close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					}), [...close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					})]])

					// Available values: "AND", "OR".
					logical_operator?: string

					// Available values: "equals", "not_equals", "greater_than", "less_than",
					// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
					// "ends_with", "in", "not_in".
					operator?: string

					// Value to compare against the context attribute. Must be an array for `in` and
					// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
					// operators.
					value?: string
				})]])

				// Evaluation order; lower numbers are evaluated first. Must be unique across the flag's rules.
				priority?: number
				rollout?: close({
					// Context attribute used for sticky bucketing. Defaults to `targetingKey`. If
					// absent at evaluation time, bucketing is random per request.
					attribute?: string

					// Percentage of matching traffic (0–100) served this variation. For multi-way
					// splits, use cumulative upper bounds across rules (e.g. 30, 70, 100).
					percentage?: number
				})

				// Variation served when this rule matches. Must be a key in `variations`.
				serve_variation?: string
			}), [...close({
				// Conditions the context must satisfy for this rule to match. An empty array matches all contexts.
				conditions?: matchN(1, [close({
					attribute?: string
					clauses?: matchN(1, [close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					}), [...close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					})]])

					// Available values: "AND", "OR".
					logical_operator?: string

					// Available values: "equals", "not_equals", "greater_than", "less_than",
					// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
					// "ends_with", "in", "not_in".
					operator?: string

					// Value to compare against the context attribute. Must be an array for `in` and
					// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
					// operators.
					value?: string
				}), [...close({
					attribute?: string
					clauses?: matchN(1, [close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					}), [...close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					})]])

					// Available values: "AND", "OR".
					logical_operator?: string

					// Available values: "equals", "not_equals", "greater_than", "less_than",
					// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
					// "ends_with", "in", "not_in".
					operator?: string

					// Value to compare against the context attribute. Must be an array for `in` and
					// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
					// operators.
					value?: string
				})]])

				// Evaluation order; lower numbers are evaluated first. Must be unique across the flag's rules.
				priority?: number
				rollout?: close({
					// Context attribute used for sticky bucketing. Defaults to `targetingKey`. If
					// absent at evaluation time, bucketing is random per request.
					attribute?: string

					// Percentage of matching traffic (0–100) served this variation. For multi-way
					// splits, use cumulative upper bounds across rules (e.g. 30, 70, 100).
					percentage?: number
				})

				// Variation served when this rule matches. Must be a key in `variations`.
				serve_variation?: string
			})]])
			description?: string

			// When false, the flag bypasses all rules and always serves `default_variation`.
			enabled?: bool

			// Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
			key?: string

			// Value type of the flag's variations. Inferred from the variation values on
			// write, so it may be omitted in requests.
			// Available values: "boolean", "string", "number", "json".
			type?:       string
			updated_at?: string

			// Map of variation name to value. All values must be the same type (boolean,
			// string, number, or JSON object/array). Each serialized value must be 10KB or
			// smaller.
			variations?: [string]: string
			updated_by?: string
		}), [...close({
			// Variation served when no rule matches or the flag is disabled. Must be a key in `variations`.
			default_variation?: string

			// Targeting rules evaluated in ascending `priority`; the first matching rule
			// wins. An empty array means the flag always serves `default_variation`.
			rules?: matchN(1, [close({
				// Conditions the context must satisfy for this rule to match. An empty array matches all contexts.
				conditions?: matchN(1, [close({
					attribute?: string
					clauses?: matchN(1, [close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					}), [...close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					})]])

					// Available values: "AND", "OR".
					logical_operator?: string

					// Available values: "equals", "not_equals", "greater_than", "less_than",
					// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
					// "ends_with", "in", "not_in".
					operator?: string

					// Value to compare against the context attribute. Must be an array for `in` and
					// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
					// operators.
					value?: string
				}), [...close({
					attribute?: string
					clauses?: matchN(1, [close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					}), [...close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					})]])

					// Available values: "AND", "OR".
					logical_operator?: string

					// Available values: "equals", "not_equals", "greater_than", "less_than",
					// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
					// "ends_with", "in", "not_in".
					operator?: string

					// Value to compare against the context attribute. Must be an array for `in` and
					// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
					// operators.
					value?: string
				})]])

				// Evaluation order; lower numbers are evaluated first. Must be unique across the flag's rules.
				priority?: number
				rollout?: close({
					// Context attribute used for sticky bucketing. Defaults to `targetingKey`. If
					// absent at evaluation time, bucketing is random per request.
					attribute?: string

					// Percentage of matching traffic (0–100) served this variation. For multi-way
					// splits, use cumulative upper bounds across rules (e.g. 30, 70, 100).
					percentage?: number
				})

				// Variation served when this rule matches. Must be a key in `variations`.
				serve_variation?: string
			}), [...close({
				// Conditions the context must satisfy for this rule to match. An empty array matches all contexts.
				conditions?: matchN(1, [close({
					attribute?: string
					clauses?: matchN(1, [close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					}), [...close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					})]])

					// Available values: "AND", "OR".
					logical_operator?: string

					// Available values: "equals", "not_equals", "greater_than", "less_than",
					// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
					// "ends_with", "in", "not_in".
					operator?: string

					// Value to compare against the context attribute. Must be an array for `in` and
					// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
					// operators.
					value?: string
				}), [...close({
					attribute?: string
					clauses?: matchN(1, [close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					}), [...close({
						attribute?: string
						clauses?: matchN(1, [close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						}), [...close({
							attribute?: string
							clauses?: matchN(1, [close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							}), [...close({
								attribute?: string
								clauses?: matchN(1, [close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								}), [...close({
									attribute?: string
									clauses?: matchN(1, [close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									}), [...close({
										attribute?: string

										// Available values: "AND", "OR".
										logical_operator?: string
										clauses?: [...string]

										// Available values: "equals", "not_equals", "greater_than", "less_than",
										// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
										// "ends_with", "in", "not_in".
										operator?: string

										// Value to compare against the context attribute. Must be an array for `in` and
										// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
										// operators.
										value?: string
									})]])

									// Available values: "AND", "OR".
									logical_operator?: string

									// Available values: "equals", "not_equals", "greater_than", "less_than",
									// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
									// "ends_with", "in", "not_in".
									operator?: string

									// Value to compare against the context attribute. Must be an array for `in` and
									// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
									// operators.
									value?: string
								})]])

								// Available values: "AND", "OR".
								logical_operator?: string

								// Available values: "equals", "not_equals", "greater_than", "less_than",
								// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
								// "ends_with", "in", "not_in".
								operator?: string

								// Value to compare against the context attribute. Must be an array for `in` and
								// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
								// operators.
								value?: string
							})]])

							// Available values: "AND", "OR".
							logical_operator?: string

							// Available values: "equals", "not_equals", "greater_than", "less_than",
							// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
							// "ends_with", "in", "not_in".
							operator?: string

							// Value to compare against the context attribute. Must be an array for `in` and
							// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
							// operators.
							value?: string
						})]])

						// Available values: "AND", "OR".
						logical_operator?: string

						// Available values: "equals", "not_equals", "greater_than", "less_than",
						// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
						// "ends_with", "in", "not_in".
						operator?: string

						// Value to compare against the context attribute. Must be an array for `in` and
						// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
						// operators.
						value?: string
					})]])

					// Available values: "AND", "OR".
					logical_operator?: string

					// Available values: "equals", "not_equals", "greater_than", "less_than",
					// "greater_than_or_equals", "less_than_or_equals", "contains", "starts_with",
					// "ends_with", "in", "not_in".
					operator?: string

					// Value to compare against the context attribute. Must be an array for `in` and
					// `not_in`; numeric and ISO-8601 datetime strings are accepted by the ordering
					// operators.
					value?: string
				})]])

				// Evaluation order; lower numbers are evaluated first. Must be unique across the flag's rules.
				priority?: number
				rollout?: close({
					// Context attribute used for sticky bucketing. Defaults to `targetingKey`. If
					// absent at evaluation time, bucketing is random per request.
					attribute?: string

					// Percentage of matching traffic (0–100) served this variation. For multi-way
					// splits, use cumulative upper bounds across rules (e.g. 30, 70, 100).
					percentage?: number
				})

				// Variation served when this rule matches. Must be a key in `variations`.
				serve_variation?: string
			})]])
			description?: string

			// When false, the flag bypasses all rules and always serves `default_variation`.
			enabled?: bool

			// Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
			key?: string

			// Value type of the flag's variations. Inferred from the variation values on
			// write, so it may be omitted in requests.
			// Available values: "boolean", "string", "number", "json".
			type?:       string
			updated_at?: string

			// Map of variation name to value. All values must be the same type (boolean,
			// string, number, or JSON object/array). Each serialized value must be 10KB or
			// smaller.
			variations?: [string]: string
			updated_by?: string
		})]])
	})
}
