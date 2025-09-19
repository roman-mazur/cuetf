package data

#aws_ce_cost_category: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ce_cost_category")
	close({
		cost_category_arn!: string
		default_value?:     string
		effective_end?:     string
		effective_start?:   string
		id?:                string
		name?:              string
		rule?: [...close({
			inherited_value?: [...close({
				dimension_key?:  string
				dimension_name?: string
			})]
			rule?: [...close({
				and?: [...close({
					and?: [...close({
						cost_category?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						dimension?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						tags?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
					})]
					cost_category?: [...close({
						key?: string
						match_options?: [...string]
						values?: [...string]
					})]
					dimension?: [...close({
						key?: string
						match_options?: [...string]
						values?: [...string]
					})]
					not?: [...close({
						cost_category?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						dimension?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						tags?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
					})]
					or?: [...close({
						cost_category?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						dimension?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						tags?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
					})]
					tags?: [...close({
						key?: string
						match_options?: [...string]
						values?: [...string]
					})]
				})]
				cost_category?: [...close({
					key?: string
					match_options?: [...string]
					values?: [...string]
				})]
				dimension?: [...close({
					key?: string
					match_options?: [...string]
					values?: [...string]
				})]
				not?: [...close({
					and?: [...close({
						cost_category?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						dimension?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						tags?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
					})]
					cost_category?: [...close({
						key?: string
						match_options?: [...string]
						values?: [...string]
					})]
					dimension?: [...close({
						key?: string
						match_options?: [...string]
						values?: [...string]
					})]
					not?: [...close({
						cost_category?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						dimension?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						tags?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
					})]
					or?: [...close({
						cost_category?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						dimension?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						tags?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
					})]
					tags?: [...close({
						key?: string
						match_options?: [...string]
						values?: [...string]
					})]
				})]
				or?: [...close({
					and?: [...close({
						cost_category?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						dimension?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						tags?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
					})]
					cost_category?: [...close({
						key?: string
						match_options?: [...string]
						values?: [...string]
					})]
					dimension?: [...close({
						key?: string
						match_options?: [...string]
						values?: [...string]
					})]
					not?: [...close({
						cost_category?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						dimension?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						tags?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
					})]
					or?: [...close({
						cost_category?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						dimension?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
						tags?: [...close({
							key?: string
							match_options?: [...string]
							values?: [...string]
						})]
					})]
					tags?: [...close({
						key?: string
						match_options?: [...string]
						values?: [...string]
					})]
				})]
				tags?: [...close({
					key?: string
					match_options?: [...string]
					values?: [...string]
				})]
			})]
			type?:  string
			value?: string
		})]
		rule_version?: string
		split_charge_rule?: [...close({
			method?: string
			parameter?: [...close({
				type?: string
				values?: [...string]
			})]
			source?: string
			targets?: [...string]
		})]
		tags?: [string]: string
	})
}
