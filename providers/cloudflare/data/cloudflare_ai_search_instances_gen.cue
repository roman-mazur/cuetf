package data

cloudflare_ai_search_instances: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_ai_search_instances")
	close({
		account_id?: string

		// Return only instances with this exact Search for Agents hostname (case-insensitive).
		hostname?: string

		// Max items to fetch, default: 1000
		max_items?: number
		namespace?: string

		// Field to order results by.
		// Available values: "created_at".
		order_by?: string

		// Order direction.
		// Available values: "asc", "desc".
		order_by_direction?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			ai_gateway_id?: string

			// Available values: "super_strict_match", "close_enough", "flexible_friend", "anything_goes".
			cache_threshold?: string
			custom_metadata?: matchN(1, [close({
				// Available values: "text", "number", "boolean", "datetime".
				data_type?:  string
				field_name?: string
			}), [...close({
				// Available values: "text", "number", "boolean", "datetime".
				data_type?:  string
				field_name?: string
			})]])
			aisearch_model?: string

			// Available values: 600, 1800, 3600, 7200, 21600, 43200, 86400, 172800, 259200, 518400.
			cache_ttl?: number
			index_method?: close({
				keyword?: bool
				vector?:  bool
			})
			cache?: bool

			// Available values: "max", "rrf".
			fusion_method?: string
			indexing_options?: close({
				// Available values: "porter", "trigram".
				keyword_tokenizer?: string
				use_ocr?:           bool
			})

			// Available values: 900, 1800, 3600, 7200, 14400, 21600, 43200, 86400.
			sync_interval?: number
			metadata?: close({
				created_from_aisearch_wizard?: bool
				created_from_emdash_plugin?: close({
					// Available values: "native", "rest".
					type?:    string
					version?: string
				})
				worker_domain?: string
			})

			// Available values: "r2", "web-crawler".
			type?: string
			public_endpoint_params?: close({
				authorized_hosts?: [...string]
				chat_completions_endpoint?: close({
					disabled?: bool
				})
				custom_domains?: [...string]
				mcp?: close({
					description?: string
					disabled?:    bool
				})
				default_domain_enabled?: bool
				rate_limit?: close({
					period_ms?: number

					// Available values: "fixed", "sliding".
					technique?: string
					requests?:  number
				})
				enabled?: bool
				search_endpoint?: close({
					disabled?: bool
				})
			})
			chunk?: bool
			retrieval_options?: close({
				boost_by?: matchN(1, [close({
					// Available values: "number", "datetime", "text", "boolean".
					data_type?: string

					// Available values: "asc", "desc", "exists", "not_exists".
					direction?: string
					field?:     string
				}), [...close({
					// Available values: "number", "datetime", "text", "boolean".
					data_type?: string

					// Available values: "asc", "desc", "exists", "not_exists".
					direction?: string
					field?:     string
				})]])

				// Available values: "and", "or".
				keyword_match_mode?: string
			})
			chunk_overlap?: number
			source_params?: close({
				exclude_items?: [...string]
				web_crawler?: close({
					discover_options?: close({
						depth?: number

						// Maximum number of pages to crawl. New values have a maximum of 100000;
						// instances configured before that cap may report a higher stored value, which
						// the crawler clamps at run time.
						limit?:                  number
						include_external_links?: bool

						// Available values: "all", "sitemaps", "links".
						source?:             string
						include_subdomains?: bool
						max_age?:            number
					})

					// Available values: "sitemap", "discover".
					parse_type?: string
					parse_options?: close({
						content_selector?: matchN(1, [close({
							path?:     string
							selector?: string
						}), [...close({
							path?:     string
							selector?: string
						})]])
						include_headers?: [string]: string
						include_images?: bool
						specific_sitemaps?: [...string]
						use_browser_rendering?: bool
					})
				})
				include_items?: [...string]
				prefix?:          string
				r2_jurisdiction?: string
			})
			chunk_size?:                        number
			created_at?:                        string
			created_by?:                        string
			embedding_model?:                   string
			enable?:                            bool
			engine_version?:                    number
			hybrid_search_enabled?:             bool
			id?:                                string
			last_activity?:                     string
			max_num_results?:                   number
			modified_at?:                       string
			modified_by?:                       string
			namespace?:                         string
			paused?:                            bool
			public_endpoint_id?:                string
			reranking?:                         bool
			reranking_model?:                   string
			rewrite_model?:                     string
			rewrite_query?:                     bool
			score_threshold?:                   number
			source?:                            string
			status?:                            string
			summarization?:                     bool
			summarization_model?:               string
			system_prompt_aisearch?:            string
			system_prompt_index_summarization?: string
			system_prompt_rewrite_query?:       string
			token_id?:                          string
		}), [...close({
			ai_gateway_id?: string

			// Available values: "super_strict_match", "close_enough", "flexible_friend", "anything_goes".
			cache_threshold?: string
			custom_metadata?: matchN(1, [close({
				// Available values: "text", "number", "boolean", "datetime".
				data_type?:  string
				field_name?: string
			}), [...close({
				// Available values: "text", "number", "boolean", "datetime".
				data_type?:  string
				field_name?: string
			})]])
			aisearch_model?: string

			// Available values: 600, 1800, 3600, 7200, 21600, 43200, 86400, 172800, 259200, 518400.
			cache_ttl?: number
			index_method?: close({
				keyword?: bool
				vector?:  bool
			})
			cache?: bool

			// Available values: "max", "rrf".
			fusion_method?: string
			indexing_options?: close({
				// Available values: "porter", "trigram".
				keyword_tokenizer?: string
				use_ocr?:           bool
			})

			// Available values: 900, 1800, 3600, 7200, 14400, 21600, 43200, 86400.
			sync_interval?: number
			metadata?: close({
				created_from_aisearch_wizard?: bool
				created_from_emdash_plugin?: close({
					// Available values: "native", "rest".
					type?:    string
					version?: string
				})
				worker_domain?: string
			})

			// Available values: "r2", "web-crawler".
			type?: string
			public_endpoint_params?: close({
				authorized_hosts?: [...string]
				chat_completions_endpoint?: close({
					disabled?: bool
				})
				custom_domains?: [...string]
				mcp?: close({
					description?: string
					disabled?:    bool
				})
				default_domain_enabled?: bool
				rate_limit?: close({
					period_ms?: number

					// Available values: "fixed", "sliding".
					technique?: string
					requests?:  number
				})
				enabled?: bool
				search_endpoint?: close({
					disabled?: bool
				})
			})
			chunk?: bool
			retrieval_options?: close({
				boost_by?: matchN(1, [close({
					// Available values: "number", "datetime", "text", "boolean".
					data_type?: string

					// Available values: "asc", "desc", "exists", "not_exists".
					direction?: string
					field?:     string
				}), [...close({
					// Available values: "number", "datetime", "text", "boolean".
					data_type?: string

					// Available values: "asc", "desc", "exists", "not_exists".
					direction?: string
					field?:     string
				})]])

				// Available values: "and", "or".
				keyword_match_mode?: string
			})
			chunk_overlap?: number
			source_params?: close({
				exclude_items?: [...string]
				web_crawler?: close({
					discover_options?: close({
						depth?: number

						// Maximum number of pages to crawl. New values have a maximum of 100000;
						// instances configured before that cap may report a higher stored value, which
						// the crawler clamps at run time.
						limit?:                  number
						include_external_links?: bool

						// Available values: "all", "sitemaps", "links".
						source?:             string
						include_subdomains?: bool
						max_age?:            number
					})

					// Available values: "sitemap", "discover".
					parse_type?: string
					parse_options?: close({
						content_selector?: matchN(1, [close({
							path?:     string
							selector?: string
						}), [...close({
							path?:     string
							selector?: string
						})]])
						include_headers?: [string]: string
						include_images?: bool
						specific_sitemaps?: [...string]
						use_browser_rendering?: bool
					})
				})
				include_items?: [...string]
				prefix?:          string
				r2_jurisdiction?: string
			})
			chunk_size?:                        number
			created_at?:                        string
			created_by?:                        string
			embedding_model?:                   string
			enable?:                            bool
			engine_version?:                    number
			hybrid_search_enabled?:             bool
			id?:                                string
			last_activity?:                     string
			max_num_results?:                   number
			modified_at?:                       string
			modified_by?:                       string
			namespace?:                         string
			paused?:                            bool
			public_endpoint_id?:                string
			reranking?:                         bool
			reranking_model?:                   string
			rewrite_model?:                     string
			rewrite_query?:                     bool
			score_threshold?:                   number
			source?:                            string
			status?:                            string
			summarization?:                     bool
			summarization_model?:               string
			system_prompt_aisearch?:            string
			system_prompt_index_summarization?: string
			system_prompt_rewrite_query?:       string
			token_id?:                          string
		})]])

		// Filter instances whose id contains this string (case-insensitive).
		search?: string
	})
}
