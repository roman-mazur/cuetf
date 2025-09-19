package data

#aws_quicksight_analysis: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_analysis")
	close({
		analysis_id!:    string
		arn?:            string
		aws_account_id?: string
		created_time?:   string
		definition?: [...close({
			analysis_defaults?: [...close({
				default_new_sheet_configuration?: [...close({
					interactive_layout_configuration?: [...close({
						free_form?: [...close({
							canvas_size_options?: [...close({
								screen_canvas_size_options?: [...close({
									optimized_view_port_width?: string
								})]
							})]
						})]
						grid?: [...close({
							canvas_size_options?: [...close({
								screen_canvas_size_options?: [...close({
									optimized_view_port_width?: string
									resize_option?:             string
								})]
							})]
						})]
					})]
					paginated_layout_configuration?: [...close({
						section_based?: [...close({
							canvas_size_options?: [...close({
								paper_canvas_size_options?: [...close({
									paper_margin?: [...close({
										bottom?: string
										left?:   string
										right?:  string
										top?:    string
									})]
									paper_orientation?: string
									paper_size?:        string
								})]
							})]
						})]
					})]
					sheet_content_type?: string
				})]
			})]
			calculated_fields?: [...close({
				data_set_identifier?: string
				expression?:          string
				name?:                string
			})]
			column_configurations?: [...close({
				column?: [...close({
					column_name?:         string
					data_set_identifier?: string
				})]
				format_configuration?: [...close({
					date_time_format_configuration?: [...close({
						date_time_format?: string
						null_value_format_configuration?: [...close({
							null_string?: string
						})]
						numeric_format_configuration?: [...close({
							currency_display_format_configuration?: [...close({
								decimal_places_configuration?: [...close({
									decimal_places?: number
								})]
								negative_value_configuration?: [...close({
									display_mode?: string
								})]
								null_value_format_configuration?: [...close({
									null_string?: string
								})]
								number_scale?: string
								prefix?:       string
								separator_configuration?: [...close({
									decimal_separator?: string
									thousands_separator?: [...close({
										symbol?:     string
										visibility?: string
									})]
								})]
								suffix?: string
								symbol?: string
							})]
							number_display_format_configuration?: [...close({
								decimal_places_configuration?: [...close({
									decimal_places?: number
								})]
								negative_value_configuration?: [...close({
									display_mode?: string
								})]
								null_value_format_configuration?: [...close({
									null_string?: string
								})]
								number_scale?: string
								prefix?:       string
								separator_configuration?: [...close({
									decimal_separator?: string
									thousands_separator?: [...close({
										symbol?:     string
										visibility?: string
									})]
								})]
								suffix?: string
							})]
							percentage_display_format_configuration?: [...close({
								decimal_places_configuration?: [...close({
									decimal_places?: number
								})]
								negative_value_configuration?: [...close({
									display_mode?: string
								})]
								null_value_format_configuration?: [...close({
									null_string?: string
								})]
								prefix?: string
								separator_configuration?: [...close({
									decimal_separator?: string
									thousands_separator?: [...close({
										symbol?:     string
										visibility?: string
									})]
								})]
								suffix?: string
							})]
						})]
					})]
					number_format_configuration?: [...close({
						numeric_format_configuration?: [...close({
							currency_display_format_configuration?: [...close({
								decimal_places_configuration?: [...close({
									decimal_places?: number
								})]
								negative_value_configuration?: [...close({
									display_mode?: string
								})]
								null_value_format_configuration?: [...close({
									null_string?: string
								})]
								number_scale?: string
								prefix?:       string
								separator_configuration?: [...close({
									decimal_separator?: string
									thousands_separator?: [...close({
										symbol?:     string
										visibility?: string
									})]
								})]
								suffix?: string
								symbol?: string
							})]
							number_display_format_configuration?: [...close({
								decimal_places_configuration?: [...close({
									decimal_places?: number
								})]
								negative_value_configuration?: [...close({
									display_mode?: string
								})]
								null_value_format_configuration?: [...close({
									null_string?: string
								})]
								number_scale?: string
								prefix?:       string
								separator_configuration?: [...close({
									decimal_separator?: string
									thousands_separator?: [...close({
										symbol?:     string
										visibility?: string
									})]
								})]
								suffix?: string
							})]
							percentage_display_format_configuration?: [...close({
								decimal_places_configuration?: [...close({
									decimal_places?: number
								})]
								negative_value_configuration?: [...close({
									display_mode?: string
								})]
								null_value_format_configuration?: [...close({
									null_string?: string
								})]
								prefix?: string
								separator_configuration?: [...close({
									decimal_separator?: string
									thousands_separator?: [...close({
										symbol?:     string
										visibility?: string
									})]
								})]
								suffix?: string
							})]
						})]
					})]
					string_format_configuration?: [...close({
						null_value_format_configuration?: [...close({
							null_string?: string
						})]
						numeric_format_configuration?: [...close({
							currency_display_format_configuration?: [...close({
								decimal_places_configuration?: [...close({
									decimal_places?: number
								})]
								negative_value_configuration?: [...close({
									display_mode?: string
								})]
								null_value_format_configuration?: [...close({
									null_string?: string
								})]
								number_scale?: string
								prefix?:       string
								separator_configuration?: [...close({
									decimal_separator?: string
									thousands_separator?: [...close({
										symbol?:     string
										visibility?: string
									})]
								})]
								suffix?: string
								symbol?: string
							})]
							number_display_format_configuration?: [...close({
								decimal_places_configuration?: [...close({
									decimal_places?: number
								})]
								negative_value_configuration?: [...close({
									display_mode?: string
								})]
								null_value_format_configuration?: [...close({
									null_string?: string
								})]
								number_scale?: string
								prefix?:       string
								separator_configuration?: [...close({
									decimal_separator?: string
									thousands_separator?: [...close({
										symbol?:     string
										visibility?: string
									})]
								})]
								suffix?: string
							})]
							percentage_display_format_configuration?: [...close({
								decimal_places_configuration?: [...close({
									decimal_places?: number
								})]
								negative_value_configuration?: [...close({
									display_mode?: string
								})]
								null_value_format_configuration?: [...close({
									null_string?: string
								})]
								prefix?: string
								separator_configuration?: [...close({
									decimal_separator?: string
									thousands_separator?: [...close({
										symbol?:     string
										visibility?: string
									})]
								})]
								suffix?: string
							})]
						})]
					})]
				})]
				role?: string
			})]
			data_set_identifiers_declarations?: [...close({
				data_set_arn?: string
				identifier?:   string
			})]
			filter_groups?: [...close({
				cross_dataset?:   string
				filter_group_id?: string
				filters?: [...close({
					category_filter?: [...close({
						column?: [...close({
							column_name?:         string
							data_set_identifier?: string
						})]
						configuration?: [...close({
							custom_filter_configuration?: [...close({
								category_value?:     string
								match_operator?:     string
								null_option?:        string
								parameter_name?:     string
								select_all_options?: string
							})]
							custom_filter_list_configuration?: [...close({
								category_values?: [...string]
								match_operator?:     string
								null_option?:        string
								select_all_options?: string
							})]
							filter_list_configuration?: [...close({
								category_values?: [...string]
								match_operator?:     string
								select_all_options?: string
							})]
						})]
						filter_id?: string
					})]
					numeric_equality_filter?: [...close({
						aggregation_function?: [...close({
							categorical_aggregation_function?: string
							date_aggregation_function?:        string
							numerical_aggregation_function?: [...close({
								percentile_aggregation?: [...close({
									percentile_value?: number
								})]
								simple_numerical_aggregation?: string
							})]
						})]
						column?: [...close({
							column_name?:         string
							data_set_identifier?: string
						})]
						filter_id?:          string
						match_operator?:     string
						null_option?:        string
						parameter_name?:     string
						select_all_options?: string
						value?:              number
					})]
					numeric_range_filter?: [...close({
						aggregation_function?: [...close({
							categorical_aggregation_function?: string
							date_aggregation_function?:        string
							numerical_aggregation_function?: [...close({
								percentile_aggregation?: [...close({
									percentile_value?: number
								})]
								simple_numerical_aggregation?: string
							})]
						})]
						column?: [...close({
							column_name?:         string
							data_set_identifier?: string
						})]
						filter_id?:       string
						include_maximum?: bool
						include_minimum?: bool
						null_option?:     string
						range_maximum?: [...close({
							parameter?:    string
							static_value?: number
						})]
						range_minimum?: [...close({
							parameter?:    string
							static_value?: number
						})]
						select_all_options?: string
					})]
					relative_dates_filter?: [...close({
						anchor_date_configuration?: [...close({
							anchor_option?:  string
							parameter_name?: string
						})]
						column?: [...close({
							column_name?:         string
							data_set_identifier?: string
						})]
						exclude_period_configuration?: [...close({
							amount?:      number
							granularity?: string
							status?:      string
						})]
						filter_id?:           string
						minimum_granularity?: string
						null_option?:         string
						parameter_name?:      string
						relative_date_type?:  string
						relative_date_value?: number
						time_granularity?:    string
					})]
					time_equality_filter?: [...close({
						column?: [...close({
							column_name?:         string
							data_set_identifier?: string
						})]
						filter_id?:        string
						parameter_name?:   string
						time_granularity?: string
						value?:            string
					})]
					time_range_filter?: [...close({
						column?: [...close({
							column_name?:         string
							data_set_identifier?: string
						})]
						exclude_period_configuration?: [...close({
							amount?:      number
							granularity?: string
							status?:      string
						})]
						filter_id?:       string
						include_maximum?: bool
						include_minimum?: bool
						null_option?:     string
						range_maximum_value?: [...close({
							parameter?: string
							rolling_date?: [...close({
								data_set_identifier?: string
								expression?:          string
							})]
							static_value?: string
						})]
						range_minimum_value?: [...close({
							parameter?: string
							rolling_date?: [...close({
								data_set_identifier?: string
								expression?:          string
							})]
							static_value?: string
						})]
						time_granularity?: string
					})]
					top_bottom_filter?: [...close({
						aggregation_sort_configuration?: [...close({
							aggregation_function?: [...close({
								categorical_aggregation_function?: string
								date_aggregation_function?:        string
								numerical_aggregation_function?: [...close({
									percentile_aggregation?: [...close({
										percentile_value?: number
									})]
									simple_numerical_aggregation?: string
								})]
							})]
							column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
							sort_direction?: string
						})]
						column?: [...close({
							column_name?:         string
							data_set_identifier?: string
						})]
						filter_id?:        string
						limit?:            number
						parameter_name?:   string
						time_granularity?: string
					})]
				})]
				scope_configuration?: [...close({
					selected_sheets?: [...close({
						sheet_visual_scoping_configurations?: [...close({
							scope?:    string
							sheet_id?: string
							visual_ids?: [...string]
						})]
					})]
				})]
				status?: string
			})]
			parameter_declarations?: [...close({
				date_time_parameter_declaration?: [...close({
					default_values?: [...close({
						dynamic_value?: [...close({
							default_value_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
							group_name_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
							user_name_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
						})]
						rolling_date?: [...close({
							data_set_identifier?: string
							expression?:          string
						})]
						static_values?: [...string]
					})]
					name?:             string
					time_granularity?: string
					values_when_unset?: [...close({
						custom_value?:            string
						value_when_unset_option?: string
					})]
				})]
				decimal_parameter_declaration?: [...close({
					default_values?: [...close({
						dynamic_value?: [...close({
							default_value_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
							group_name_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
							user_name_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
						})]
						static_values?: [...number]
					})]
					name?:                 string
					parameter_value_type?: string
					values_when_unset?: [...close({
						custom_value?:            number
						value_when_unset_option?: string
					})]
				})]
				integer_parameter_declaration?: [...close({
					default_values?: [...close({
						dynamic_value?: [...close({
							default_value_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
							group_name_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
							user_name_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
						})]
						static_values?: [...number]
					})]
					name?:                 string
					parameter_value_type?: string
					values_when_unset?: [...close({
						custom_value?:            number
						value_when_unset_option?: string
					})]
				})]
				string_parameter_declaration?: [...close({
					default_values?: [...close({
						dynamic_value?: [...close({
							default_value_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
							group_name_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
							user_name_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
						})]
						static_values?: [...string]
					})]
					name?:                 string
					parameter_value_type?: string
					values_when_unset?: [...close({
						custom_value?:            string
						value_when_unset_option?: string
					})]
				})]
			})]
			sheets?: [...close({
				content_type?: string
				description?:  string
				filter_controls?: [...close({
					date_time_picker?: [...close({
						display_options?: [...close({
							date_time_format?: string
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						filter_control_id?: string
						source_filter_id?:  string
						title?:             string
						type?:              string
					})]
					dropdown?: [...close({
						cascading_control_configuration?: [...close({
							source_controls?: [...close({
								column_to_match?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								source_sheet_control_id?: string
							})]
						})]
						display_options?: [...close({
							select_all_options?: [...close({
								visibility?: string
							})]
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						filter_control_id?: string
						selectable_values?: [...close({
							values?: [...string]
						})]
						source_filter_id?: string
						title?:            string
						type?:             string
					})]
					list?: [...close({
						cascading_control_configuration?: [...close({
							source_controls?: [...close({
								column_to_match?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								source_sheet_control_id?: string
							})]
						})]
						display_options?: [...close({
							search_options?: [...close({
								visibility?: string
							})]
							select_all_options?: [...close({
								visibility?: string
							})]
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						filter_control_id?: string
						selectable_values?: [...close({
							values?: [...string]
						})]
						source_filter_id?: string
						title?:            string
						type?:             string
					})]
					relative_date_time?: [...close({
						display_options?: [...close({
							date_time_format?: string
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						filter_control_id?: string
						source_filter_id?:  string
						title?:             string
					})]
					slider?: [...close({
						display_options?: [...close({
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						filter_control_id?: string
						maximum_value?:     number
						minimum_value?:     number
						source_filter_id?:  string
						step_size?:         number
						title?:             string
						type?:              string
					})]
					text_area?: [...close({
						delimiter?: string
						display_options?: [...close({
							placeholder_options?: [...close({
								visibility?: string
							})]
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						filter_control_id?: string
						source_filter_id?:  string
						title?:             string
					})]
					text_field?: [...close({
						display_options?: [...close({
							placeholder_options?: [...close({
								visibility?: string
							})]
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						filter_control_id?: string
						source_filter_id?:  string
						title?:             string
					})]
				})]
				layouts?: [...close({
					configuration?: [...close({
						free_form_layout?: [...close({
							canvas_size_options?: [...close({
								screen_canvas_size_options?: [...close({
									optimized_view_port_width?: string
								})]
							})]
							elements?: [...close({
								background_style?: [...close({
									color?:      string
									visibility?: string
								})]
								border_style?: [...close({
									color?:      string
									visibility?: string
								})]
								element_id?:   string
								element_type?: string
								height?:       string
								loading_animation?: [...close({
									visibility?: string
								})]
								rendering_rules?: [...close({
									configuration_overrides?: [...close({
										visibility?: string
									})]
									expression?: string
								})]
								selected_border_style?: [...close({
									color?:      string
									visibility?: string
								})]
								visibility?:      string
								width?:           string
								x_axis_location?: string
								y_axis_location?: string
							})]
						})]
						grid_layout?: [...close({
							canvas_size_options?: [...close({
								screen_canvas_size_options?: [...close({
									optimized_view_port_width?: string
									resize_option?:             string
								})]
							})]
							elements?: [...close({
								column_index?: string
								column_span?:  number
								element_id?:   string
								element_type?: string
								row_index?:    string
								row_span?:     number
							})]
						})]
						section_based_layout?: [...close({
							body_sections?: [...close({
								content?: [...close({
									layout?: [...close({
										free_form_layout?: [...close({
											elements?: [...close({
												background_style?: [...close({
													color?:      string
													visibility?: string
												})]
												border_style?: [...close({
													color?:      string
													visibility?: string
												})]
												element_id?:   string
												element_type?: string
												height?:       string
												loading_animation?: [...close({
													visibility?: string
												})]
												rendering_rules?: [...close({
													configuration_overrides?: [...close({
														visibility?: string
													})]
													expression?: string
												})]
												selected_border_style?: [...close({
													color?:      string
													visibility?: string
												})]
												visibility?:      string
												width?:           string
												x_axis_location?: string
												y_axis_location?: string
											})]
										})]
									})]
								})]
								page_break_configuration?: [...close({
									after?: [...close({
										status?: string
									})]
								})]
								section_id?: string
								style?: [...close({
									height?: string
									padding?: [...close({
										bottom?: string
										left?:   string
										right?:  string
										top?:    string
									})]
								})]
							})]
							canvas_size_options?: [...close({
								paper_canvas_size_options?: [...close({
									paper_margin?: [...close({
										bottom?: string
										left?:   string
										right?:  string
										top?:    string
									})]
									paper_orientation?: string
									paper_size?:        string
								})]
							})]
							footer_sections?: [...close({
								layout?: [...close({
									free_form_layout?: [...close({
										elements?: [...close({
											background_style?: [...close({
												color?:      string
												visibility?: string
											})]
											border_style?: [...close({
												color?:      string
												visibility?: string
											})]
											element_id?:   string
											element_type?: string
											height?:       string
											loading_animation?: [...close({
												visibility?: string
											})]
											rendering_rules?: [...close({
												configuration_overrides?: [...close({
													visibility?: string
												})]
												expression?: string
											})]
											selected_border_style?: [...close({
												color?:      string
												visibility?: string
											})]
											visibility?:      string
											width?:           string
											x_axis_location?: string
											y_axis_location?: string
										})]
									})]
								})]
								section_id?: string
								style?: [...close({
									height?: string
									padding?: [...close({
										bottom?: string
										left?:   string
										right?:  string
										top?:    string
									})]
								})]
							})]
							header_sections?: [...close({
								layout?: [...close({
									free_form_layout?: [...close({
										elements?: [...close({
											background_style?: [...close({
												color?:      string
												visibility?: string
											})]
											border_style?: [...close({
												color?:      string
												visibility?: string
											})]
											element_id?:   string
											element_type?: string
											height?:       string
											loading_animation?: [...close({
												visibility?: string
											})]
											rendering_rules?: [...close({
												configuration_overrides?: [...close({
													visibility?: string
												})]
												expression?: string
											})]
											selected_border_style?: [...close({
												color?:      string
												visibility?: string
											})]
											visibility?:      string
											width?:           string
											x_axis_location?: string
											y_axis_location?: string
										})]
									})]
								})]
								section_id?: string
								style?: [...close({
									height?: string
									padding?: [...close({
										bottom?: string
										left?:   string
										right?:  string
										top?:    string
									})]
								})]
							})]
						})]
					})]
				})]
				name?: string
				parameter_controls?: [...close({
					date_time_picker?: [...close({
						display_options?: [...close({
							date_time_format?: string
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						parameter_control_id?:  string
						source_parameter_name?: string
						title?:                 string
					})]
					dropdown?: [...close({
						cascading_control_configuration?: [...close({
							source_controls?: [...close({
								column_to_match?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								source_sheet_control_id?: string
							})]
						})]
						display_options?: [...close({
							select_all_options?: [...close({
								visibility?: string
							})]
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						parameter_control_id?: string
						selectable_values?: [...close({
							link_to_data_set_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
							values?: [...string]
						})]
						source_parameter_name?: string
						title?:                 string
						type?:                  string
					})]
					list?: [...close({
						cascading_control_configuration?: [...close({
							source_controls?: [...close({
								column_to_match?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								source_sheet_control_id?: string
							})]
						})]
						display_options?: [...close({
							search_options?: [...close({
								visibility?: string
							})]
							select_all_options?: [...close({
								visibility?: string
							})]
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						parameter_control_id?: string
						selectable_values?: [...close({
							link_to_data_set_column?: [...close({
								column_name?:         string
								data_set_identifier?: string
							})]
							values?: [...string]
						})]
						source_parameter_name?: string
						title?:                 string
						type?:                  string
					})]
					slider?: [...close({
						display_options?: [...close({
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						maximum_value?:         number
						minimum_value?:         number
						parameter_control_id?:  string
						source_parameter_name?: string
						step_size?:             number
						title?:                 string
					})]
					text_area?: [...close({
						delimiter?: string
						display_options?: [...close({
							placeholder_options?: [...close({
								visibility?: string
							})]
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						parameter_control_id?:  string
						source_parameter_name?: string
						title?:                 string
					})]
					text_field?: [...close({
						display_options?: [...close({
							placeholder_options?: [...close({
								visibility?: string
							})]
							title_options?: [...close({
								custom_label?: string
								font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								visibility?: string
							})]
						})]
						parameter_control_id?:  string
						source_parameter_name?: string
						title?:                 string
					})]
				})]
				sheet_control_layouts?: [...close({
					configuration?: [...close({
						grid_layout?: [...close({
							canvas_size_options?: [...close({
								screen_canvas_size_options?: [...close({
									optimized_view_port_width?: string
									resize_option?:             string
								})]
							})]
							elements?: [...close({
								column_index?: string
								column_span?:  number
								element_id?:   string
								element_type?: string
								row_index?:    string
								row_span?:     number
							})]
						})]
					})]
				})]
				sheet_id?: string
				text_boxes?: [...close({
					content?:           string
					sheet_text_box_id?: string
				})]
				title?: string
				visuals?: [...close({
					bar_chart_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							bars_arrangement?: string
							category_axis?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							category_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							color_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							contribution_analysis_defaults?: [...close({
								contributor_dimensions?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								measure_field_id?: string
							})]
							data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							field_wells?: [...close({
								bar_chart_aggregated_field_wells?: [...close({
									category?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									colors?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									small_multiples?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							orientation?: string
							reference_lines?: [...close({
								data_configuration?: [...close({
									axis_binding?: string
									dynamic_configuration?: [...close({
										calculation?: [...close({
											percentile_aggregation?: [...close({
												percentile_value?: number
											})]
											simple_numerical_aggregation?: string
										})]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										measure_aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
									})]
									static_configuration?: [...close({
										value?: number
									})]
								})]
								label_configuration?: [...close({
									custom_label_configuration?: [...close({
										custom_label?: string
									})]
									font_color?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									horizontal_position?: string
									value_label_configuration?: [...close({
										format_configuration?: [...close({
											currency_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												number_scale?: string
												prefix?:       string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
												symbol?: string
											})]
											number_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												number_scale?: string
												prefix?:       string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
											})]
											percentage_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												prefix?: string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
											})]
										})]
										relative_position?: string
									})]
									vertical_position?: string
								})]
								status?: string
								style_configuration?: [...close({
									color?:   string
									pattern?: string
								})]
							})]
							small_multiples_options?: [...close({
								max_visible_columns?: number
								max_visible_rows?:    number
								panel_configuration?: [...close({
									background_color?:      string
									background_visibility?: string
									border_color?:          string
									border_style?:          string
									border_thickness?:      string
									border_visibility?:     string
									gutter_spacing?:        string
									gutter_visibility?:     string
									title?: [...close({
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										horizontal_text_alignment?: string
										visibility?:                string
									})]
								})]
							})]
							sort_configuration?: [...close({
								category_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								category_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
								color_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								color_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
								small_multiples_limit_configuration?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								small_multiples_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
							value_axis?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							value_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					box_plot_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							box_plot_options?: [...close({
								all_data_points_visibility?: string
								outlier_visibility?:         string
								style_options?: [...close({
									fill_style?: string
								})]
							})]
							category_axis?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							category_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							field_wells?: [...close({
								box_plot_aggregated_field_wells?: [...close({
									group_by?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							primary_y_axis_display_options?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							primary_y_axis_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							reference_lines?: [...close({
								data_configuration?: [...close({
									axis_binding?: string
									dynamic_configuration?: [...close({
										calculation?: [...close({
											percentile_aggregation?: [...close({
												percentile_value?: number
											})]
											simple_numerical_aggregation?: string
										})]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										measure_aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
									})]
									static_configuration?: [...close({
										value?: number
									})]
								})]
								label_configuration?: [...close({
									custom_label_configuration?: [...close({
										custom_label?: string
									})]
									font_color?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									horizontal_position?: string
									value_label_configuration?: [...close({
										format_configuration?: [...close({
											currency_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												number_scale?: string
												prefix?:       string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
												symbol?: string
											})]
											number_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												number_scale?: string
												prefix?:       string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
											})]
											percentage_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												prefix?: string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
											})]
										})]
										relative_position?: string
									})]
									vertical_position?: string
								})]
								status?: string
								style_configuration?: [...close({
									color?:   string
									pattern?: string
								})]
							})]
							sort_configuration?: [...close({
								category_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
								pagination_configuration?: [...close({
									page_number?: number
									page_size?:   number
								})]
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					combo_chart_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							bar_data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							bars_arrangement?: string
							category_axis?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							category_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							color_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							field_wells?: [...close({
								combo_chart_aggregated_field_wells?: [...close({
									bar_values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
									category?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									colors?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									line_values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							line_data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							primary_y_axis_display_options?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							primary_y_axis_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							reference_lines?: [...close({
								data_configuration?: [...close({
									axis_binding?: string
									dynamic_configuration?: [...close({
										calculation?: [...close({
											percentile_aggregation?: [...close({
												percentile_value?: number
											})]
											simple_numerical_aggregation?: string
										})]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										measure_aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
									})]
									static_configuration?: [...close({
										value?: number
									})]
								})]
								label_configuration?: [...close({
									custom_label_configuration?: [...close({
										custom_label?: string
									})]
									font_color?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									horizontal_position?: string
									value_label_configuration?: [...close({
										format_configuration?: [...close({
											currency_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												number_scale?: string
												prefix?:       string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
												symbol?: string
											})]
											number_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												number_scale?: string
												prefix?:       string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
											})]
											percentage_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												prefix?: string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
											})]
										})]
										relative_position?: string
									})]
									vertical_position?: string
								})]
								status?: string
								style_configuration?: [...close({
									color?:   string
									pattern?: string
								})]
							})]
							secondary_y_axis_display_options?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							secondary_y_axis_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							sort_configuration?: [...close({
								category_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								category_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
								color_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								color_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					custom_content_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							content_type?:  string
							content_url?:   string
							image_scaling?: string
						})]
						data_set_identifier?: string
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					empty_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						data_set_identifier?: string
						visual_id?:           string
					})]
					filled_map_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							field_wells?: [...close({
								filled_map_aggregated_field_wells?: [...close({
									geospatial?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							map_style_options?: [...close({
								base_map_style?: string
							})]
							sort_configuration?: [...close({
								category_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
							window_options?: [...close({
								bounds?: [...close({
									east?:  number
									north?: number
									south?: number
									west?:  number
								})]
								map_zoom_mode?: string
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						conditional_formatting?: [...close({
							conditional_formatting_options?: [...close({
								shape?: [...close({
									field_id?: string
									format?: [...close({
										background_color?: [...close({
											gradient?: [...close({
												color?: [...close({
													stops?: [...close({
														color?:           string
														data_value?:      number
														gradient_offset?: number
													})]
												})]
												expression?: string
											})]
											solid?: [...close({
												color?:      string
												expression?: string
											})]
										})]
									})]
								})]
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					funnel_chart_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							category_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							data_label_options?: [...close({
								category_label_visibility?: string
								label_color?:               string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_data_label_style?: string
								measure_label_visibility?: string
								position?:                 string
								visibility?:               string
							})]
							field_wells?: [...close({
								funnel_chart_aggregated_field_wells?: [...close({
									category?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							sort_configuration?: [...close({
								category_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								category_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
							value_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					gauge_chart_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							field_wells?: [...close({
								target_values?: [...close({
									calculated_measure_field?: [...close({
										expression?: string
										field_id?:   string
									})]
									categorical_measure_field?: [...close({
										aggregation_function?: string
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
									date_measure_field?: [...close({
										aggregation_function?: string
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											date_time_format?: string
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
									numerical_measure_field?: [...close({
										aggregation_function?: [...close({
											percentile_aggregation?: [...close({
												percentile_value?: number
											})]
											simple_numerical_aggregation?: string
										})]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
								})]
								values?: [...close({
									calculated_measure_field?: [...close({
										expression?: string
										field_id?:   string
									})]
									categorical_measure_field?: [...close({
										aggregation_function?: string
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
									date_measure_field?: [...close({
										aggregation_function?: string
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											date_time_format?: string
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
									numerical_measure_field?: [...close({
										aggregation_function?: [...close({
											percentile_aggregation?: [...close({
												percentile_value?: number
											})]
											simple_numerical_aggregation?: string
										})]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
								})]
							})]
							gauge_chart_options?: [...close({
								arc?: [...close({
									arc_angle?:     number
									arc_thickness?: string
								})]
								arc_axis?: [...close({
									range?: [...close({
										max?: number
										min?: number
									})]
									reserve_range?: number
								})]
								comparison?: [...close({
									comparison_format?: [...close({
										number_display_format_configuration?: [...close({
											decimal_places_configuration?: [...close({
												decimal_places?: number
											})]
											negative_value_configuration?: [...close({
												display_mode?: string
											})]
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											number_scale?: string
											prefix?:       string
											separator_configuration?: [...close({
												decimal_separator?: string
												thousands_separator?: [...close({
													symbol?:     string
													visibility?: string
												})]
											})]
											suffix?: string
										})]
										percentage_display_format_configuration?: [...close({
											decimal_places_configuration?: [...close({
												decimal_places?: number
											})]
											negative_value_configuration?: [...close({
												display_mode?: string
											})]
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											prefix?: string
											separator_configuration?: [...close({
												decimal_separator?: string
												thousands_separator?: [...close({
													symbol?:     string
													visibility?: string
												})]
											})]
											suffix?: string
										})]
									})]
									comparison_method?: string
								})]
								primary_value_display_type?: string
								primary_value_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
						})]
						conditional_formatting?: [...close({
							conditional_formatting_options?: [...close({
								arc?: [...close({
									foreground_color?: [...close({
										gradient?: [...close({
											color?: [...close({
												stops?: [...close({
													color?:           string
													data_value?:      number
													gradient_offset?: number
												})]
											})]
											expression?: string
										})]
										solid?: [...close({
											color?:      string
											expression?: string
										})]
									})]
								})]
								primary_value?: [...close({
									icon?: [...close({
										custom_condition?: [...close({
											color?: string
											display_configuration?: [...close({
												icon_display_option?: string
											})]
											expression?: string
											icon_options?: [...close({
												icon?:         string
												unicode_icon?: string
											})]
										})]
										icon_set?: [...close({
											expression?:    string
											icon_set_type?: string
										})]
									})]
									text_color?: [...close({
										gradient?: [...close({
											color?: [...close({
												stops?: [...close({
													color?:           string
													data_value?:      number
													gradient_offset?: number
												})]
											})]
											expression?: string
										})]
										solid?: [...close({
											color?:      string
											expression?: string
										})]
									})]
								})]
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					geospatial_map_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							field_wells?: [...close({
								geospatial_map_aggregated_field_wells?: [...close({
									colors?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									geospatial?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							map_style_options?: [...close({
								base_map_style?: string
							})]
							point_style_options?: [...close({
								cluster_marker_configuration?: [...close({
									cluster_marker?: [...close({
										simple_cluster_marker?: [...close({
											color?: string
										})]
									})]
								})]
								selected_point_style?: string
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
							window_options?: [...close({
								bounds?: [...close({
									east?:  number
									north?: number
									south?: number
									west?:  number
								})]
								map_zoom_mode?: string
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					heat_map_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							color_scale?: [...close({
								color_fill_type?: string
								colors?: [...close({
									color?:      string
									data_value?: number
								})]
								null_value_color?: [...close({
									color?:      string
									data_value?: number
								})]
							})]
							column_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							field_wells?: [...close({
								heat_map_aggregated_field_wells?: [...close({
									columns?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									rows?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							row_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							sort_configuration?: [...close({
								heat_map_column_items_limit_configuration?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								heat_map_column_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
								heat_map_row_items_limit_configuration?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								heat_map_row_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					histogram_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							bin_options?: [...close({
								bin_count?: [...close({
									value?: number
								})]
								bin_width?: [...close({
									bin_count_limit?: number
									value?:           number
								})]
								selected_bin_type?: string
								start_value?:       number
							})]
							data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							field_wells?: [...close({
								histogram_aggregated_field_wells?: [...close({
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
							x_axis_display_options?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							x_axis_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							y_axis_display_options?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					insight_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						data_set_identifier?: string
						insight_configuration?: [...close({
							computation?: [...close({
								forecast?: [...close({
									computation_id?:           string
									custom_seasonality_value?: number
									lower_boundary?:           number
									name?:                     string
									periods_backward?:         number
									periods_forward?:          number
									prediction_interval?:      number
									seasonality?:              string
									time?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									upper_boundary?: number
									value?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
								growth_rate?: [...close({
									computation_id?: string
									name?:           string
									period_size?:    number
									time?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									value?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
								maximum_minimum?: [...close({
									computation_id?: string
									name?:           string
									time?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									type?: string
									value?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
								metric_comparison?: [...close({
									computation_id?: string
									from_value?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
									name?: string
									target_value?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
									time?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
								})]
								period_over_period?: [...close({
									computation_id?: string
									name?:           string
									time?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									value?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
								period_to_date?: [...close({
									computation_id?:          string
									name?:                    string
									period_time_granularity?: string
									time?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									value?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
								top_bottom_movers?: [...close({
									category?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									computation_id?: string
									mover_size?:     number
									name?:           string
									sort_order?:     string
									time?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									type?: string
									value?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
								top_bottom_ranked?: [...close({
									category?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									computation_id?: string
									name?:           string
									result_size?:    number
									type?:           string
									value?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
								total_aggregation?: [...close({
									computation_id?: string
									name?:           string
									value?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
								unique_values?: [...close({
									category?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									computation_id?: string
									name?:           string
								})]
							})]
							custom_narrative?: [...close({
								narrative?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					kpi_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							field_wells?: [...close({
								target_values?: [...close({
									calculated_measure_field?: [...close({
										expression?: string
										field_id?:   string
									})]
									categorical_measure_field?: [...close({
										aggregation_function?: string
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
									date_measure_field?: [...close({
										aggregation_function?: string
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											date_time_format?: string
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
									numerical_measure_field?: [...close({
										aggregation_function?: [...close({
											percentile_aggregation?: [...close({
												percentile_value?: number
											})]
											simple_numerical_aggregation?: string
										})]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
								})]
								trend_groups?: [...close({
									categorical_dimension_field?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
										hierarchy_id?: string
									})]
									date_dimension_field?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										date_granularity?: string
										field_id?:         string
										format_configuration?: [...close({
											date_time_format?: string
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
										hierarchy_id?: string
									})]
									numerical_dimension_field?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
										hierarchy_id?: string
									})]
								})]
								values?: [...close({
									calculated_measure_field?: [...close({
										expression?: string
										field_id?:   string
									})]
									categorical_measure_field?: [...close({
										aggregation_function?: string
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
									date_measure_field?: [...close({
										aggregation_function?: string
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											date_time_format?: string
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
									numerical_measure_field?: [...close({
										aggregation_function?: [...close({
											percentile_aggregation?: [...close({
												percentile_value?: number
											})]
											simple_numerical_aggregation?: string
										})]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											numeric_format_configuration?: [...close({
												currency_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
													symbol?: string
												})]
												number_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													number_scale?: string
													prefix?:       string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
												percentage_display_format_configuration?: [...close({
													decimal_places_configuration?: [...close({
														decimal_places?: number
													})]
													negative_value_configuration?: [...close({
														display_mode?: string
													})]
													null_value_format_configuration?: [...close({
														null_string?: string
													})]
													prefix?: string
													separator_configuration?: [...close({
														decimal_separator?: string
														thousands_separator?: [...close({
															symbol?:     string
															visibility?: string
														})]
													})]
													suffix?: string
												})]
											})]
										})]
									})]
								})]
							})]
							kpi_options?: [...close({
								comparison?: [...close({
									comparison_format?: [...close({
										number_display_format_configuration?: [...close({
											decimal_places_configuration?: [...close({
												decimal_places?: number
											})]
											negative_value_configuration?: [...close({
												display_mode?: string
											})]
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											number_scale?: string
											prefix?:       string
											separator_configuration?: [...close({
												decimal_separator?: string
												thousands_separator?: [...close({
													symbol?:     string
													visibility?: string
												})]
											})]
											suffix?: string
										})]
										percentage_display_format_configuration?: [...close({
											decimal_places_configuration?: [...close({
												decimal_places?: number
											})]
											negative_value_configuration?: [...close({
												display_mode?: string
											})]
											null_value_format_configuration?: [...close({
												null_string?: string
											})]
											prefix?: string
											separator_configuration?: [...close({
												decimal_separator?: string
												thousands_separator?: [...close({
													symbol?:     string
													visibility?: string
												})]
											})]
											suffix?: string
										})]
									})]
									comparison_method?: string
								})]
								primary_value_display_type?: string
								primary_value_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								progress_bar?: [...close({
									visibility?: string
								})]
								secondary_value?: [...close({
									visibility?: string
								})]
								secondary_value_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								sparkline?: [...close({
									color?:              string
									tooltip_visibility?: string
									type?:               string
									visibility?:         string
								})]
								trend_arrows?: [...close({
									visibility?: string
								})]
								visual_layout_options?: [...close({
									standard_layout?: [...close({
										type?: string
									})]
								})]
							})]
							sort_configuration?: [...close({
								trend_group_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						conditional_formatting?: [...close({
							conditional_formatting_options?: [...close({
								actual_value?: [...close({
									icon?: [...close({
										custom_condition?: [...close({
											color?: string
											display_configuration?: [...close({
												icon_display_option?: string
											})]
											expression?: string
											icon_options?: [...close({
												icon?:         string
												unicode_icon?: string
											})]
										})]
										icon_set?: [...close({
											expression?:    string
											icon_set_type?: string
										})]
									})]
									text_color?: [...close({
										gradient?: [...close({
											color?: [...close({
												stops?: [...close({
													color?:           string
													data_value?:      number
													gradient_offset?: number
												})]
											})]
											expression?: string
										})]
										solid?: [...close({
											color?:      string
											expression?: string
										})]
									})]
								})]
								comparison_value?: [...close({
									icon?: [...close({
										custom_condition?: [...close({
											color?: string
											display_configuration?: [...close({
												icon_display_option?: string
											})]
											expression?: string
											icon_options?: [...close({
												icon?:         string
												unicode_icon?: string
											})]
										})]
										icon_set?: [...close({
											expression?:    string
											icon_set_type?: string
										})]
									})]
									text_color?: [...close({
										gradient?: [...close({
											color?: [...close({
												stops?: [...close({
													color?:           string
													data_value?:      number
													gradient_offset?: number
												})]
											})]
											expression?: string
										})]
										solid?: [...close({
											color?:      string
											expression?: string
										})]
									})]
								})]
								primary_value?: [...close({
									icon?: [...close({
										custom_condition?: [...close({
											color?: string
											display_configuration?: [...close({
												icon_display_option?: string
											})]
											expression?: string
											icon_options?: [...close({
												icon?:         string
												unicode_icon?: string
											})]
										})]
										icon_set?: [...close({
											expression?:    string
											icon_set_type?: string
										})]
									})]
									text_color?: [...close({
										gradient?: [...close({
											color?: [...close({
												stops?: [...close({
													color?:           string
													data_value?:      number
													gradient_offset?: number
												})]
											})]
											expression?: string
										})]
										solid?: [...close({
											color?:      string
											expression?: string
										})]
									})]
								})]
								progress_bar?: [...close({
									foreground_color?: [...close({
										gradient?: [...close({
											color?: [...close({
												stops?: [...close({
													color?:           string
													data_value?:      number
													gradient_offset?: number
												})]
											})]
											expression?: string
										})]
										solid?: [...close({
											color?:      string
											expression?: string
										})]
									})]
								})]
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					line_chart_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							contribution_analysis_defaults?: [...close({
								contributor_dimensions?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								measure_field_id?: string
							})]
							data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							default_series_settings?: [...close({
								axis_binding?: string
								line_style_settings?: [...close({
									line_interpolation?: string
									line_style?:         string
									line_visibility?:    string
									line_width?:         string
								})]
								marker_style_settings?: [...close({
									marker_color?:      string
									marker_shape?:      string
									marker_size?:       string
									marker_visibility?: string
								})]
							})]
							field_wells?: [...close({
								line_chart_aggregated_field_wells?: [...close({
									category?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									colors?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									small_multiples?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							forecast_configurations?: [...close({
								forecast_properties?: [...close({
									lower_boundary?:      number
									periods_backward?:    number
									periods_forward?:     number
									prediction_interval?: number
									seasonality?:         number
									upper_boundary?:      number
								})]
								scenario?: [...close({
									what_if_point_scenario?: [...close({
										date?:  string
										value?: number
									})]
									what_if_range_scenario?: [...close({
										end_date?:   string
										start_date?: string
										value?:      number
									})]
								})]
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							primary_y_axis_display_options?: [...close({
								axis_options?: [...close({
									axis_line_visibility?: string
									axis_offset?:          string
									data_options?: [...close({
										date_axis_options?: [...close({
											missing_date_visibility?: string
										})]
										numeric_axis_options?: [...close({
											range?: [...close({
												data_driven?: [...close({})]
												min_max?: [...close({
													maximum?: number
													minimum?: number
												})]
											})]
											scale?: [...close({
												linear?: [...close({
													step_count?: number
													step_size?:  number
												})]
												logarithmic?: [...close({
													base?: number
												})]
											})]
										})]
									})]
									grid_line_visibility?: string
									scrollbar_options?: [...close({
										visibility?: string
										visible_range?: [...close({
											percent_range?: [...close({
												from?: number
												to?:   number
											})]
										})]
									})]
									tick_label_options?: [...close({
										label_options?: [...close({
											custom_label?: string
											font_configuration?: [...close({
												font_color?:      string
												font_decoration?: string
												font_size?: [...close({
													relative?: string
												})]
												font_style?: string
												font_weight?: [...close({
													name?: string
												})]
											})]
											visibility?: string
										})]
										rotation_angle?: number
									})]
								})]
								missing_data_configuration?: [...close({
									treatment_option?: string
								})]
							})]
							primary_y_axis_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							reference_lines?: [...close({
								data_configuration?: [...close({
									axis_binding?: string
									dynamic_configuration?: [...close({
										calculation?: [...close({
											percentile_aggregation?: [...close({
												percentile_value?: number
											})]
											simple_numerical_aggregation?: string
										})]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										measure_aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
									})]
									static_configuration?: [...close({
										value?: number
									})]
								})]
								label_configuration?: [...close({
									custom_label_configuration?: [...close({
										custom_label?: string
									})]
									font_color?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									horizontal_position?: string
									value_label_configuration?: [...close({
										format_configuration?: [...close({
											currency_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												number_scale?: string
												prefix?:       string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
												symbol?: string
											})]
											number_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												number_scale?: string
												prefix?:       string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
											})]
											percentage_display_format_configuration?: [...close({
												decimal_places_configuration?: [...close({
													decimal_places?: number
												})]
												negative_value_configuration?: [...close({
													display_mode?: string
												})]
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												prefix?: string
												separator_configuration?: [...close({
													decimal_separator?: string
													thousands_separator?: [...close({
														symbol?:     string
														visibility?: string
													})]
												})]
												suffix?: string
											})]
										})]
										relative_position?: string
									})]
									vertical_position?: string
								})]
								status?: string
								style_configuration?: [...close({
									color?:   string
									pattern?: string
								})]
							})]
							secondary_y_axis_display_options?: [...close({
								axis_options?: [...close({
									axis_line_visibility?: string
									axis_offset?:          string
									data_options?: [...close({
										date_axis_options?: [...close({
											missing_date_visibility?: string
										})]
										numeric_axis_options?: [...close({
											range?: [...close({
												data_driven?: [...close({})]
												min_max?: [...close({
													maximum?: number
													minimum?: number
												})]
											})]
											scale?: [...close({
												linear?: [...close({
													step_count?: number
													step_size?:  number
												})]
												logarithmic?: [...close({
													base?: number
												})]
											})]
										})]
									})]
									grid_line_visibility?: string
									scrollbar_options?: [...close({
										visibility?: string
										visible_range?: [...close({
											percent_range?: [...close({
												from?: number
												to?:   number
											})]
										})]
									})]
									tick_label_options?: [...close({
										label_options?: [...close({
											custom_label?: string
											font_configuration?: [...close({
												font_color?:      string
												font_decoration?: string
												font_size?: [...close({
													relative?: string
												})]
												font_style?: string
												font_weight?: [...close({
													name?: string
												})]
											})]
											visibility?: string
										})]
										rotation_angle?: number
									})]
								})]
								missing_data_configuration?: [...close({
									treatment_option?: string
								})]
							})]
							secondary_y_axis_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							series?: [...close({
								data_field_series_item?: [...close({
									axis_binding?: string
									field_id?:     string
									field_value?:  string
									settings?: [...close({
										line_style_settings?: [...close({
											line_interpolation?: string
											line_style?:         string
											line_visibility?:    string
											line_width?:         string
										})]
										marker_style_settings?: [...close({
											marker_color?:      string
											marker_shape?:      string
											marker_size?:       string
											marker_visibility?: string
										})]
									})]
								})]
								field_series_item?: [...close({
									axis_binding?: string
									field_id?:     string
									settings?: [...close({
										line_style_settings?: [...close({
											line_interpolation?: string
											line_style?:         string
											line_visibility?:    string
											line_width?:         string
										})]
										marker_style_settings?: [...close({
											marker_color?:      string
											marker_shape?:      string
											marker_size?:       string
											marker_visibility?: string
										})]
									})]
								})]
							})]
							small_multiples_options?: [...close({
								max_visible_columns?: number
								max_visible_rows?:    number
								panel_configuration?: [...close({
									background_color?:      string
									background_visibility?: string
									border_color?:          string
									border_style?:          string
									border_thickness?:      string
									border_visibility?:     string
									gutter_spacing?:        string
									gutter_visibility?:     string
									title?: [...close({
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										horizontal_text_alignment?: string
										visibility?:                string
									})]
								})]
							})]
							sort_configuration?: [...close({
								category_items_limit_configuration?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								category_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
								color_items_limit_configuration?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								small_multiples_limit_configuration?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								small_multiples_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
							type?: string
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
							x_axis_display_options?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							x_axis_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					pie_chart_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							category_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							contribution_analysis_defaults?: [...close({
								contributor_dimensions?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								measure_field_id?: string
							})]
							data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							donut_options?: [...close({
								arc_options?: [...close({
									arc_thickness?: string
								})]
								donut_center_options?: [...close({
									label_visibility?: string
								})]
							})]
							field_wells?: [...close({
								pie_chart_aggregated_field_wells?: [...close({
									category?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									small_multiples?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							small_multiples_options?: [...close({
								max_visible_columns?: number
								max_visible_rows?:    number
								panel_configuration?: [...close({
									background_color?:      string
									background_visibility?: string
									border_color?:          string
									border_style?:          string
									border_thickness?:      string
									border_visibility?:     string
									gutter_spacing?:        string
									gutter_visibility?:     string
									title?: [...close({
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										horizontal_text_alignment?: string
										visibility?:                string
									})]
								})]
							})]
							sort_configuration?: [...close({
								category_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								category_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
								small_multiples_limit_configuration?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								small_multiples_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
							value_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					pivot_table_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							field_options?: [...close({
								data_path_options?: [...close({
									data_path_list?: [...close({
										field_id?:    string
										field_value?: string
									})]
									width?: string
								})]
								selected_field_options?: [...close({
									custom_label?: string
									field_id?:     string
									visibility?:   string
								})]
							})]
							field_wells?: [...close({
								pivot_table_aggregated_field_wells?: [...close({
									columns?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									rows?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							paginated_report_options?: [...close({
								overflow_column_header_visibility?: string
								vertical_overflow_visibility?:      string
							})]
							sort_configuration?: [...close({
								field_sort_options?: [...close({
									field_id?: string
									sort_by?: [...close({
										column?: [...close({
											aggregation_function?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											direction?: string
											sort_by?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
										})]
										data_path?: [...close({
											direction?: string
											sort_paths?: [...close({
												field_id?:    string
												field_value?: string
											})]
										})]
										field?: [...close({
											direction?: string
											field_id?:  string
										})]
									})]
								})]
							})]
							table_options?: [...close({
								cell_style?: [...close({
									background_color?: string
									border?: [...close({
										side_specific_border?: [...close({
											bottom?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_horizontal?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_vertical?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											left?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											right?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											top?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										uniform_border?: [...close({
											color?:     string
											style?:     string
											thickness?: number
										})]
									})]
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									height?:                    number
									horizontal_text_alignment?: string
									text_wrap?:                 string
									vertical_text_alignment?:   string
									visibility?:                string
								})]
								collapsed_row_dimensions_visibility?: string
								column_header_style?: [...close({
									background_color?: string
									border?: [...close({
										side_specific_border?: [...close({
											bottom?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_horizontal?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_vertical?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											left?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											right?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											top?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										uniform_border?: [...close({
											color?:     string
											style?:     string
											thickness?: number
										})]
									})]
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									height?:                    number
									horizontal_text_alignment?: string
									text_wrap?:                 string
									vertical_text_alignment?:   string
									visibility?:                string
								})]
								column_names_visibility?: string
								metric_placement?:        string
								row_alternate_color_options?: [...close({
									row_alternate_colors?: [...string]
									status?: string
								})]
								row_field_names_style?: [...close({
									background_color?: string
									border?: [...close({
										side_specific_border?: [...close({
											bottom?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_horizontal?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_vertical?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											left?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											right?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											top?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										uniform_border?: [...close({
											color?:     string
											style?:     string
											thickness?: number
										})]
									})]
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									height?:                    number
									horizontal_text_alignment?: string
									text_wrap?:                 string
									vertical_text_alignment?:   string
									visibility?:                string
								})]
								row_header_style?: [...close({
									background_color?: string
									border?: [...close({
										side_specific_border?: [...close({
											bottom?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_horizontal?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_vertical?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											left?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											right?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											top?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										uniform_border?: [...close({
											color?:     string
											style?:     string
											thickness?: number
										})]
									})]
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									height?:                    number
									horizontal_text_alignment?: string
									text_wrap?:                 string
									vertical_text_alignment?:   string
									visibility?:                string
								})]
								single_metric_visibility?:  string
								toggle_buttons_visibility?: string
							})]
							total_options?: [...close({
								column_subtotal_options?: [...close({
									custom_label?: string
									field_level?:  string
									field_level_options?: [...close({
										field_id?: string
									})]
									metric_header_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
									total_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
									totals_visibility?: string
									value_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
								})]
								column_total_options?: [...close({
									custom_label?: string
									metric_header_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
									placement?:     string
									scroll_status?: string
									total_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
									totals_visibility?: string
									value_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
								})]
								row_subtotal_options?: [...close({
									custom_label?: string
									field_level?:  string
									field_level_options?: [...close({
										field_id?: string
									})]
									metric_header_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
									total_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
									totals_visibility?: string
									value_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
								})]
								row_total_options?: [...close({
									custom_label?: string
									metric_header_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
									placement?:     string
									scroll_status?: string
									total_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
									totals_visibility?: string
									value_cell_style?: [...close({
										background_color?: string
										border?: [...close({
											side_specific_border?: [...close({
												bottom?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_horizontal?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												inner_vertical?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												left?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												right?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
												top?: [...close({
													color?:     string
													style?:     string
													thickness?: number
												})]
											})]
											uniform_border?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										height?:                    number
										horizontal_text_alignment?: string
										text_wrap?:                 string
										vertical_text_alignment?:   string
										visibility?:                string
									})]
								})]
							})]
						})]
						conditional_formatting?: [...close({
							conditional_formatting_options?: [...close({
								cell?: [...close({
									field_id?: string
									scope?: [...close({
										role?: string
									})]
									text_format?: [...close({
										background_color?: [...close({
											gradient?: [...close({
												color?: [...close({
													stops?: [...close({
														color?:           string
														data_value?:      number
														gradient_offset?: number
													})]
												})]
												expression?: string
											})]
											solid?: [...close({
												color?:      string
												expression?: string
											})]
										})]
										icon?: [...close({
											custom_condition?: [...close({
												color?: string
												display_configuration?: [...close({
													icon_display_option?: string
												})]
												expression?: string
												icon_options?: [...close({
													icon?:         string
													unicode_icon?: string
												})]
											})]
											icon_set?: [...close({
												expression?:    string
												icon_set_type?: string
											})]
										})]
										text_color?: [...close({
											gradient?: [...close({
												color?: [...close({
													stops?: [...close({
														color?:           string
														data_value?:      number
														gradient_offset?: number
													})]
												})]
												expression?: string
											})]
											solid?: [...close({
												color?:      string
												expression?: string
											})]
										})]
									})]
								})]
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					radar_chart_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							alternate_band_colors_visibility?: string
							alternate_band_even_color?:        string
							alternate_band_odd_color?:         string
							base_series_settings?: [...close({
								area_style_settings?: [...close({
									visibility?: string
								})]
							})]
							category_axis?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							category_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							color_axis?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							color_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							field_wells?: [...close({
								radar_chart_aggregated_field_wells?: [...close({
									category?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									color?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							shape?: string
							sort_configuration?: [...close({
								category_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								category_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
								color_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								color_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							start_angle?: number
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					sankey_diagram_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							field_wells?: [...close({
								sankey_diagram_aggregated_field_wells?: [...close({
									destination?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									source?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									weight?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							sort_configuration?: [...close({
								destination_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								source_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								weight_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					scatter_plot_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							field_wells?: [...close({
								scatter_plot_categorically_aggregated_field_wells?: [...close({
									category?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									size?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
									x_axis?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
									y_axis?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
								scatter_plot_unaggregated_field_wells?: [...close({
									size?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
									x_axis?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									y_axis?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
								})]
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
							x_axis_display_options?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							x_axis_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							y_axis_display_options?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							y_axis_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					table_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							field_options?: [...close({
								order?: [...string]
								selected_field_options?: [...close({
									custom_label?: string
									field_id?:     string
									url_styling?: [...close({
										image_configuration?: [...close({
											sizing_options?: [...close({
												table_cell_image_scaling_configuration?: string
											})]
										})]
										link_configuration?: [...close({
											content?: [...close({
												custom_icon_content?: [...close({
													icon?: string
												})]
												custom_text_content?: [...close({
													font_configuration?: [...close({
														font_color?:      string
														font_decoration?: string
														font_size?: [...close({
															relative?: string
														})]
														font_style?: string
														font_weight?: [...close({
															name?: string
														})]
													})]
													value?: string
												})]
											})]
											target?: string
										})]
									})]
									visibility?: string
									width?:      string
								})]
							})]
							field_wells?: [...close({
								table_aggregated_field_wells?: [...close({
									group_by?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
								table_unaggregated_field_wells?: [...close({
									values?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
										format_configuration?: [...close({
											date_time_format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											number_format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											string_format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							paginated_report_options?: [...close({
								overflow_column_header_visibility?: string
								vertical_overflow_visibility?:      string
							})]
							sort_configuration?: [...close({
								pagination_configuration?: [...close({
									page_number?: number
									page_size?:   number
								})]
								row_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							table_inline_visualizations?: [...close({
								data_bars?: [...close({
									field_id?:       string
									negative_color?: string
									positive_color?: string
								})]
							})]
							table_options?: [...close({
								cell_style?: [...close({
									background_color?: string
									border?: [...close({
										side_specific_border?: [...close({
											bottom?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_horizontal?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_vertical?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											left?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											right?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											top?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										uniform_border?: [...close({
											color?:     string
											style?:     string
											thickness?: number
										})]
									})]
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									height?:                    number
									horizontal_text_alignment?: string
									text_wrap?:                 string
									vertical_text_alignment?:   string
									visibility?:                string
								})]
								header_style?: [...close({
									background_color?: string
									border?: [...close({
										side_specific_border?: [...close({
											bottom?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_horizontal?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_vertical?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											left?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											right?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											top?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										uniform_border?: [...close({
											color?:     string
											style?:     string
											thickness?: number
										})]
									})]
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									height?:                    number
									horizontal_text_alignment?: string
									text_wrap?:                 string
									vertical_text_alignment?:   string
									visibility?:                string
								})]
								orientation?: string
								row_alternate_color_options?: [...close({
									row_alternate_colors?: [...string]
									status?: string
								})]
							})]
							total_options?: [...close({
								custom_label?:  string
								placement?:     string
								scroll_status?: string
								total_cell_style?: [...close({
									background_color?: string
									border?: [...close({
										side_specific_border?: [...close({
											bottom?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_horizontal?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											inner_vertical?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											left?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											right?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
											top?: [...close({
												color?:     string
												style?:     string
												thickness?: number
											})]
										})]
										uniform_border?: [...close({
											color?:     string
											style?:     string
											thickness?: number
										})]
									})]
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									height?:                    number
									horizontal_text_alignment?: string
									text_wrap?:                 string
									vertical_text_alignment?:   string
									visibility?:                string
								})]
								totals_visibility?: string
							})]
						})]
						conditional_formatting?: [...close({
							conditional_formatting_options?: [...close({
								cell?: [...close({
									field_id?: string
									text_format?: [...close({
										background_color?: [...close({
											gradient?: [...close({
												color?: [...close({
													stops?: [...close({
														color?:           string
														data_value?:      number
														gradient_offset?: number
													})]
												})]
												expression?: string
											})]
											solid?: [...close({
												color?:      string
												expression?: string
											})]
										})]
										icon?: [...close({
											custom_condition?: [...close({
												color?: string
												display_configuration?: [...close({
													icon_display_option?: string
												})]
												expression?: string
												icon_options?: [...close({
													icon?:         string
													unicode_icon?: string
												})]
											})]
											icon_set?: [...close({
												expression?:    string
												icon_set_type?: string
											})]
										})]
										text_color?: [...close({
											gradient?: [...close({
												color?: [...close({
													stops?: [...close({
														color?:           string
														data_value?:      number
														gradient_offset?: number
													})]
												})]
												expression?: string
											})]
											solid?: [...close({
												color?:      string
												expression?: string
											})]
										})]
									})]
								})]
								row?: [...close({
									background_color?: [...close({
										gradient?: [...close({
											color?: [...close({
												stops?: [...close({
													color?:           string
													data_value?:      number
													gradient_offset?: number
												})]
											})]
											expression?: string
										})]
										solid?: [...close({
											color?:      string
											expression?: string
										})]
									})]
									text_color?: [...close({
										gradient?: [...close({
											color?: [...close({
												stops?: [...close({
													color?:           string
													data_value?:      number
													gradient_offset?: number
												})]
											})]
											expression?: string
										})]
										solid?: [...close({
											color?:      string
											expression?: string
										})]
									})]
								})]
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					tree_map_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							color_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							color_scale?: [...close({
								color_fill_type?: string
								colors?: [...close({
									color?:      string
									data_value?: number
								})]
								null_value_color?: [...close({
									color?:      string
									data_value?: number
								})]
							})]
							data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							field_wells?: [...close({
								tree_map_aggregated_field_wells?: [...close({
									colors?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
									groups?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									sizes?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							group_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							size_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							sort_configuration?: [...close({
								tree_map_group_items_limit_configuration?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								tree_map_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							tooltip?: [...close({
								field_base_tooltip?: [...close({
									aggregation_visibility?: string
									tooltip_fields?: [...close({
										column_tooltip_item?: [...close({
											aggregation?: [...close({
												categorical_aggregation_function?: string
												date_aggregation_function?:        string
												numerical_aggregation_function?: [...close({
													percentile_aggregation?: [...close({
														percentile_value?: number
													})]
													simple_numerical_aggregation?: string
												})]
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											label?:      string
											visibility?: string
										})]
										field_tooltip_item?: [...close({
											field_id?:   string
											label?:      string
											visibility?: string
										})]
									})]
									tooltip_title_type?: string
								})]
								selected_tooltip_type?: string
								tooltip_visibility?:    string
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					waterfall_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							category_axis_display_options?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							category_axis_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							data_labels?: [...close({
								category_label_visibility?: string
								data_label_types?: [...close({
									data_path_label_type?: [...close({
										field_id?:    string
										field_value?: string
										visibility?:  string
									})]
									field_label_type?: [...close({
										field_id?:   string
										visibility?: string
									})]
									maximum_label_type?: [...close({
										visibility?: string
									})]
									minimum_label_type?: [...close({
										visibility?: string
									})]
									range_ends_label_type?: [...close({
										visibility?: string
									})]
								})]
								label_color?:   string
								label_content?: string
								label_font_configuration?: [...close({
									font_color?:      string
									font_decoration?: string
									font_size?: [...close({
										relative?: string
									})]
									font_style?: string
									font_weight?: [...close({
										name?: string
									})]
								})]
								measure_label_visibility?: string
								overlap?:                  string
								position?:                 string
								visibility?:               string
							})]
							field_wells?: [...close({
								waterfall_chart_aggregated_field_wells?: [...close({
									breakdowns?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									categories?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									values?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							legend?: [...close({
								height?:   string
								position?: string
								title?: [...close({
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
									visibility?: string
								})]
								visibility?: string
								width?:      string
							})]
							primary_y_axis_display_options?: [...close({
								axis_line_visibility?: string
								axis_offset?:          string
								data_options?: [...close({
									date_axis_options?: [...close({
										missing_date_visibility?: string
									})]
									numeric_axis_options?: [...close({
										range?: [...close({
											data_driven?: [...close({})]
											min_max?: [...close({
												maximum?: number
												minimum?: number
											})]
										})]
										scale?: [...close({
											linear?: [...close({
												step_count?: number
												step_size?:  number
											})]
											logarithmic?: [...close({
												base?: number
											})]
										})]
									})]
								})]
								grid_line_visibility?: string
								scrollbar_options?: [...close({
									visibility?: string
									visible_range?: [...close({
										percent_range?: [...close({
											from?: number
											to?:   number
										})]
									})]
								})]
								tick_label_options?: [...close({
									label_options?: [...close({
										custom_label?: string
										font_configuration?: [...close({
											font_color?:      string
											font_decoration?: string
											font_size?: [...close({
												relative?: string
											})]
											font_style?: string
											font_weight?: [...close({
												name?: string
											})]
										})]
										visibility?: string
									})]
									rotation_angle?: number
								})]
							})]
							primary_y_axis_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							sort_configuration?: [...close({
								breakdown_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								category_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							visual_palette?: [...close({
								chart_color?: string
								color_map?: [...close({
									color?: string
									element?: [...close({
										field_id?:    string
										field_value?: string
									})]
									time_granularity?: string
								})]
							})]
							waterfall_chart_options?: [...close({
								total_bar_label?: string
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
					word_cloud_visual?: [...close({
						actions?: [...close({
							action_operations?: [...close({
								filter_operation?: [...close({
									selected_fields_configuration?: [...close({
										selected_field_option?: string
										selected_fields?: [...string]
									})]
									target_visuals_configuration?: [...close({
										same_sheet_target_visual_configuration?: [...close({
											target_visual_option?: string
											target_visuals?: [...string]
										})]
									})]
								})]
								navigation_operation?: [...close({
									local_navigation_configuration?: [...close({
										target_sheet_id?: string
									})]
								})]
								set_parameters_operation?: [...close({
									parameter_value_configurations?: [...close({
										destination_parameter_name?: string
										value?: [...close({
											custom_values_configuration?: [...close({
												custom_values?: [...close({
													date_time_values?: [...string]
													decimal_values?: [...number]
													integer_values?: [...number]
													string_values?: [...string]
												})]
												include_null_value?: bool
											})]
											select_all_value_options?: string
											source_field?:             string
											source_parameter_name?:    string
										})]
									})]
								})]
								url_operation?: [...close({
									url_target?:   string
									url_template?: string
								})]
							})]
							custom_action_id?: string
							name?:             string
							status?:           string
							trigger?:          string
						})]
						chart_configuration?: [...close({
							category_label_options?: [...close({
								axis_label_options?: [...close({
									apply_to?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										field_id?: string
									})]
									custom_label?: string
									font_configuration?: [...close({
										font_color?:      string
										font_decoration?: string
										font_size?: [...close({
											relative?: string
										})]
										font_style?: string
										font_weight?: [...close({
											name?: string
										})]
									})]
								})]
								sort_icon_visibility?: string
								visibility?:           string
							})]
							field_wells?: [...close({
								word_cloud_aggregated_field_wells?: [...close({
									group_by?: [...close({
										categorical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										date_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											date_granularity?: string
											field_id?:         string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
										numerical_dimension_field?: [...close({
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
											hierarchy_id?: string
										})]
									})]
									size?: [...close({
										calculated_measure_field?: [...close({
											expression?: string
											field_id?:   string
										})]
										categorical_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										date_measure_field?: [...close({
											aggregation_function?: string
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												date_time_format?: string
												null_value_format_configuration?: [...close({
													null_string?: string
												})]
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
										numerical_measure_field?: [...close({
											aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
											column?: [...close({
												column_name?:         string
												data_set_identifier?: string
											})]
											field_id?: string
											format_configuration?: [...close({
												numeric_format_configuration?: [...close({
													currency_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
														symbol?: string
													})]
													number_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														number_scale?: string
														prefix?:       string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
													percentage_display_format_configuration?: [...close({
														decimal_places_configuration?: [...close({
															decimal_places?: number
														})]
														negative_value_configuration?: [...close({
															display_mode?: string
														})]
														null_value_format_configuration?: [...close({
															null_string?: string
														})]
														prefix?: string
														separator_configuration?: [...close({
															decimal_separator?: string
															thousands_separator?: [...close({
																symbol?:     string
																visibility?: string
															})]
														})]
														suffix?: string
													})]
												})]
											})]
										})]
									})]
								})]
							})]
							sort_configuration?: [...close({
								category_items_limit?: [...close({
									items_limit?:      number
									other_categories?: string
								})]
								category_sort?: [...close({
									column_sort?: [...close({
										aggregation_function?: [...close({
											categorical_aggregation_function?: string
											date_aggregation_function?:        string
											numerical_aggregation_function?: [...close({
												percentile_aggregation?: [...close({
													percentile_value?: number
												})]
												simple_numerical_aggregation?: string
											})]
										})]
										direction?: string
										sort_by?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									field_sort?: [...close({
										direction?: string
										field_id?:  string
									})]
								})]
							})]
							word_cloud_options?: [...close({
								cloud_layout?:          string
								maximum_string_length?: number
								word_casing?:           string
								word_orientation?:      string
								word_padding?:          string
								word_scaling?:          string
							})]
						})]
						column_hierarchies?: [...close({
							date_time_hierarchy?: [...close({
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							explicit_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
							predefined_hierarchy?: [...close({
								columns?: [...close({
									column_name?:         string
									data_set_identifier?: string
								})]
								drill_down_filters?: [...close({
									category_filter?: [...close({
										category_values?: [...string]
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
									})]
									numeric_equality_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										value?: number
									})]
									time_range_filter?: [...close({
										column?: [...close({
											column_name?:         string
											data_set_identifier?: string
										})]
										range_maximum?:    string
										range_minimum?:    string
										time_granularity?: string
									})]
								})]
								hierarchy_id?: string
							})]
						})]
						subtitle?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						title?: [...close({
							format_text?: [...close({
								plain_text?: string
								rich_text?:  string
							})]
							visibility?: string
						})]
						visual_id?: string
					})]
				})]
			})]
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		id?:                  string
		last_published_time?: string
		last_updated_time?:   string
		name?:                string
		permissions?: [...close({
			actions?: [...string]
			principal?: string
		})]
		status?: string
		tags?: [string]: string
		theme_arn?: string
	})
}
