package data

cloudflare_ai_search_instances: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_ai_search_instances")
	close({
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter by namespace.
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

			// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast",
			// "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast",
			// "@cf/meta/llama-3.1-8b-instruct-fp8",
			// "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8",
			// "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b",
			// "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it",
			// "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5",
			// "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4",
			// "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku",
			// "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking",
			// "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct",
			// "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b",
			// "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro",
			// "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant",
			// "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
			aisearch_model?: string
			custom_metadata?: matchN(1, [close({
				// Available values: "text", "number", "boolean", "datetime".
				data_type?:  string
				field_name?: string
			}), [...close({
				// Available values: "text", "number", "boolean", "datetime".
				data_type?:  string
				field_name?: string
			})]])

			// Available values: "super_strict_match", "close_enough", "flexible_friend", "anything_goes".
			cache_threshold?: string

			// Controls which storage backends are used during indexing. Defaults to vector-only.
			index_method?: close({
				// Enable keyword (BM25) storage backend.
				keyword?: bool

				// Enable vector (embedding) storage backend.
				vector?: bool
			})
			cache?: bool

			// Cache entry TTL in seconds. Allowed values: 600 (10min), 1800 (30min), 3600
			// (1h), 7200 (2h), 21600 (6h), 43200 (12h), 86400 (24h), 172800 (48h), 259200
			// (72h), 518400 (6d).
			// Available values: 600, 1800, 3600, 7200, 21600, 43200, 86400, 172800, 259200, 518400.
			cache_ttl?: number
			indexing_options?: close({
				// Tokenizer used for keyword search indexing. porter provides word-level
				// tokenization with Porter stemming (good for natural language queries).
				// trigram enables character-level substring matching (good for partial
				// matches, code, identifiers). Changing this triggers a full re-index.
				// Defaults to porter.
				// Available values: "porter", "trigram".
				keyword_tokenizer?: string
			})

			// Available values: "@cf/qwen/qwen3-embedding-0.6b", "@cf/baai/bge-m3",
			// "@cf/baai/bge-large-en-v1.5", "@cf/google/embeddinggemma-300m",
			// "google-ai-studio/gemini-embedding-001",
			// "google-ai-studio/gemini-embedding-2-preview",
			// "google-ai-studio/gemini-embedding-2", "openai/text-embedding-3-small",
			// "openai/text-embedding-3-large", "".
			embedding_model?: string
			metadata?: close({
				created_from_aisearch_wizard?: bool
				worker_domain?:                string
			})

			// Available values: "max", "rrf".
			fusion_method?: string
			public_endpoint_params?: close({
				authorized_hosts?: [...string]
				chat_completions_endpoint?: close({
					// Disable chat completions endpoint for this public endpoint
					disabled?: bool
				})

				// Custom domain hostnames that alias this public endpoint. GET and create
				// responses return the current set; on update (PUT) this field is only echoed
				// back when supplied in the request body, otherwise it is null (omit it to
				// leave domains unchanged).
				custom_domains?: [...string]
				mcp?: close({
					description?: string

					// Disable MCP endpoint for this public endpoint
					disabled?: bool
				})
				enabled?: bool
				rate_limit?: close({
					period_ms?: number

					// Available values: "fixed", "sliding".
					technique?: string
					requests?:  number
				})
				search_endpoint?: close({
					// Disable search endpoint for this public endpoint
					disabled?: bool
				})
			})
			chunk_overlap?: number

			// AI Search instance ID. Lowercase alphanumeric, hyphens, and underscores.
			id?: string
			retrieval_options?: close({
				// Metadata fields to boost search results by. Each entry specifies a metadata
				// field and an optional direction. Direction defaults to 'asc' for
				// numeric/datetime fields and 'exists' for text/boolean fields. Fields must
				// match 'timestamp' or a defined custom_metadata field.
				boost_by?: matchN(1, [close({
					// Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps).
					// 'asc' = lower values rank higher. 'exists' = boost chunks that have the
					// field. 'not_exists' = boost chunks that lack the field. Optional — defaults
					// to 'asc' for numeric/datetime fields, 'exists' for text/boolean fields.
					// Available values: "asc", "desc", "exists", "not_exists".
					direction?: string

					// Metadata field name to boost by. Use 'timestamp' for document freshness, or
					// any custom_metadata field. Numeric and datetime fields support all four
					// directions (asc, desc, exists, not_exists); text/boolean fields only support
					// exists/not_exists.
					field?: string
				}), [...close({
					// Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps).
					// 'asc' = lower values rank higher. 'exists' = boost chunks that have the
					// field. 'not_exists' = boost chunks that lack the field. Optional — defaults
					// to 'asc' for numeric/datetime fields, 'exists' for text/boolean fields.
					// Available values: "asc", "desc", "exists", "not_exists".
					direction?: string

					// Metadata field name to boost by. Use 'timestamp' for document freshness, or
					// any custom_metadata field. Numeric and datetime fields support all four
					// directions (asc, desc, exists, not_exists); text/boolean fields only support
					// exists/not_exists.
					field?: string
				})]])

				// Controls which documents are candidates for BM25 scoring. 'and' restricts
				// candidates to documents containing all query terms; 'or' includes any
				// document containing at least one term, ranked by BM25 relevance. Defaults to
				// 'and'.
				// Available values: "and", "or".
				keyword_match_mode?: string
			})
			chunk_size?: number
			source_params?: close({
				// List of path patterns to exclude. Uses micromatch glob syntax: * matches
				// within a path segment, ** matches across path segments (e.g., /admin/**
				// matches /admin/users and /admin/settings/advanced)
				exclude_items?: [...string]
				web_crawler?: close({
					parse_options?: close({
						// List of path-to-selector mappings for extracting specific content from
						// crawled pages. Each entry pairs a URL glob pattern with a CSS selector. The
						// first matching path wins. Only the matched HTML fragment is stored and
						// indexed. Omit the field to disable content selection — empty arrays are
						// rejected.
						content_selector?: matchN(1, [close({
							// Glob pattern to match against the page URL path. Uses standard glob syntax: *
							// matches within a segment, ** crosses directories.
							path?: string

							// CSS selector to extract content from pages matching the path pattern. Must
							// not contain disallowed characters (;, `, $, {, }, \). Must target a single
							// element; if multiple elements match, the selector is ignored and the full
							// page is used.
							selector?: string
						}), [...close({
							// Glob pattern to match against the page URL path. Uses standard glob syntax: *
							// matches within a segment, ** crosses directories.
							path?: string

							// CSS selector to extract content from pages matching the path pattern. Must
							// not contain disallowed characters (;, `, $, {, }, \). Must target a single
							// element; if multiple elements match, the selector is ignored and the full
							// page is used.
							selector?: string
						})]])

						// Up to 5 custom HTTP headers sent with each crawl request. Names must be
						// RFC-7230 token characters (no spaces, colons, or control characters); values
						// must be HTAB + printable ASCII (no CR/LF).
						include_headers?: [string]: string
						include_images?: bool

						// List of specific sitemap URLs to use for crawling. Only valid when parse_type is 'sitemap'.
						specific_sitemaps?: [...string]
						use_browser_rendering?: bool
					})

					// Available values: "sitemap", "feed-rss", "crawl".
					parse_type?: string
					store_options?: close({
						r2_jurisdiction?: string

						// Available values: "r2".
						storage_type?: string
						storage_id?:   string
					})
				})

				// List of path patterns to include. Uses micromatch glob syntax: * matches
				// within a path segment, ** matches across path segments (e.g., /blog/**
				// matches /blog/post and /blog/2024/post)
				include_items?: [...string]
				prefix?:          string
				r2_jurisdiction?: string
			})
			created_at?: string

			// Available values: "@cf/baai/bge-reranker-base", "".
			reranking_model?: string
			created_by?:      string

			// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast",
			// "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast",
			// "@cf/meta/llama-3.1-8b-instruct-fp8",
			// "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8",
			// "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b",
			// "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it",
			// "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5",
			// "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4",
			// "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku",
			// "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking",
			// "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct",
			// "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b",
			// "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro",
			// "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant",
			// "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
			rewrite_model?: string

			// Interval between automatic syncs, in seconds. Allowed values: 900 (15min),
			// 1800 (30min), 3600 (1h), 7200 (2h), 14400 (4h), 21600 (6h), 43200 (12h),
			// 86400 (24h).
			// Available values: 900, 1800, 3600, 7200, 14400, 21600, 43200, 86400.
			sync_interval?: number
			enable?:        bool

			// Available values: "r2", "web-crawler".
			type?:               string
			engine_version?:     number
			last_activity?:      string
			max_num_results?:    number
			modified_at?:        string
			modified_by?:        string
			namespace?:          string
			paused?:             bool
			public_endpoint_id?: string
			reranking?:          bool
			rewrite_query?:      bool
			score_threshold?:    number
			source?:             string
			status?:             string
			token_id?:           string
		}), [...close({
			ai_gateway_id?: string

			// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast",
			// "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast",
			// "@cf/meta/llama-3.1-8b-instruct-fp8",
			// "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8",
			// "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b",
			// "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it",
			// "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5",
			// "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4",
			// "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku",
			// "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking",
			// "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct",
			// "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b",
			// "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro",
			// "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant",
			// "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
			aisearch_model?: string
			custom_metadata?: matchN(1, [close({
				// Available values: "text", "number", "boolean", "datetime".
				data_type?:  string
				field_name?: string
			}), [...close({
				// Available values: "text", "number", "boolean", "datetime".
				data_type?:  string
				field_name?: string
			})]])

			// Available values: "super_strict_match", "close_enough", "flexible_friend", "anything_goes".
			cache_threshold?: string

			// Controls which storage backends are used during indexing. Defaults to vector-only.
			index_method?: close({
				// Enable keyword (BM25) storage backend.
				keyword?: bool

				// Enable vector (embedding) storage backend.
				vector?: bool
			})
			cache?: bool

			// Cache entry TTL in seconds. Allowed values: 600 (10min), 1800 (30min), 3600
			// (1h), 7200 (2h), 21600 (6h), 43200 (12h), 86400 (24h), 172800 (48h), 259200
			// (72h), 518400 (6d).
			// Available values: 600, 1800, 3600, 7200, 21600, 43200, 86400, 172800, 259200, 518400.
			cache_ttl?: number
			indexing_options?: close({
				// Tokenizer used for keyword search indexing. porter provides word-level
				// tokenization with Porter stemming (good for natural language queries).
				// trigram enables character-level substring matching (good for partial
				// matches, code, identifiers). Changing this triggers a full re-index.
				// Defaults to porter.
				// Available values: "porter", "trigram".
				keyword_tokenizer?: string
			})

			// Available values: "@cf/qwen/qwen3-embedding-0.6b", "@cf/baai/bge-m3",
			// "@cf/baai/bge-large-en-v1.5", "@cf/google/embeddinggemma-300m",
			// "google-ai-studio/gemini-embedding-001",
			// "google-ai-studio/gemini-embedding-2-preview",
			// "google-ai-studio/gemini-embedding-2", "openai/text-embedding-3-small",
			// "openai/text-embedding-3-large", "".
			embedding_model?: string
			metadata?: close({
				created_from_aisearch_wizard?: bool
				worker_domain?:                string
			})

			// Available values: "max", "rrf".
			fusion_method?: string
			public_endpoint_params?: close({
				authorized_hosts?: [...string]
				chat_completions_endpoint?: close({
					// Disable chat completions endpoint for this public endpoint
					disabled?: bool
				})

				// Custom domain hostnames that alias this public endpoint. GET and create
				// responses return the current set; on update (PUT) this field is only echoed
				// back when supplied in the request body, otherwise it is null (omit it to
				// leave domains unchanged).
				custom_domains?: [...string]
				mcp?: close({
					description?: string

					// Disable MCP endpoint for this public endpoint
					disabled?: bool
				})
				enabled?: bool
				rate_limit?: close({
					period_ms?: number

					// Available values: "fixed", "sliding".
					technique?: string
					requests?:  number
				})
				search_endpoint?: close({
					// Disable search endpoint for this public endpoint
					disabled?: bool
				})
			})
			chunk_overlap?: number

			// AI Search instance ID. Lowercase alphanumeric, hyphens, and underscores.
			id?: string
			retrieval_options?: close({
				// Metadata fields to boost search results by. Each entry specifies a metadata
				// field and an optional direction. Direction defaults to 'asc' for
				// numeric/datetime fields and 'exists' for text/boolean fields. Fields must
				// match 'timestamp' or a defined custom_metadata field.
				boost_by?: matchN(1, [close({
					// Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps).
					// 'asc' = lower values rank higher. 'exists' = boost chunks that have the
					// field. 'not_exists' = boost chunks that lack the field. Optional — defaults
					// to 'asc' for numeric/datetime fields, 'exists' for text/boolean fields.
					// Available values: "asc", "desc", "exists", "not_exists".
					direction?: string

					// Metadata field name to boost by. Use 'timestamp' for document freshness, or
					// any custom_metadata field. Numeric and datetime fields support all four
					// directions (asc, desc, exists, not_exists); text/boolean fields only support
					// exists/not_exists.
					field?: string
				}), [...close({
					// Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps).
					// 'asc' = lower values rank higher. 'exists' = boost chunks that have the
					// field. 'not_exists' = boost chunks that lack the field. Optional — defaults
					// to 'asc' for numeric/datetime fields, 'exists' for text/boolean fields.
					// Available values: "asc", "desc", "exists", "not_exists".
					direction?: string

					// Metadata field name to boost by. Use 'timestamp' for document freshness, or
					// any custom_metadata field. Numeric and datetime fields support all four
					// directions (asc, desc, exists, not_exists); text/boolean fields only support
					// exists/not_exists.
					field?: string
				})]])

				// Controls which documents are candidates for BM25 scoring. 'and' restricts
				// candidates to documents containing all query terms; 'or' includes any
				// document containing at least one term, ranked by BM25 relevance. Defaults to
				// 'and'.
				// Available values: "and", "or".
				keyword_match_mode?: string
			})
			chunk_size?: number
			source_params?: close({
				// List of path patterns to exclude. Uses micromatch glob syntax: * matches
				// within a path segment, ** matches across path segments (e.g., /admin/**
				// matches /admin/users and /admin/settings/advanced)
				exclude_items?: [...string]
				web_crawler?: close({
					parse_options?: close({
						// List of path-to-selector mappings for extracting specific content from
						// crawled pages. Each entry pairs a URL glob pattern with a CSS selector. The
						// first matching path wins. Only the matched HTML fragment is stored and
						// indexed. Omit the field to disable content selection — empty arrays are
						// rejected.
						content_selector?: matchN(1, [close({
							// Glob pattern to match against the page URL path. Uses standard glob syntax: *
							// matches within a segment, ** crosses directories.
							path?: string

							// CSS selector to extract content from pages matching the path pattern. Must
							// not contain disallowed characters (;, `, $, {, }, \). Must target a single
							// element; if multiple elements match, the selector is ignored and the full
							// page is used.
							selector?: string
						}), [...close({
							// Glob pattern to match against the page URL path. Uses standard glob syntax: *
							// matches within a segment, ** crosses directories.
							path?: string

							// CSS selector to extract content from pages matching the path pattern. Must
							// not contain disallowed characters (;, `, $, {, }, \). Must target a single
							// element; if multiple elements match, the selector is ignored and the full
							// page is used.
							selector?: string
						})]])

						// Up to 5 custom HTTP headers sent with each crawl request. Names must be
						// RFC-7230 token characters (no spaces, colons, or control characters); values
						// must be HTAB + printable ASCII (no CR/LF).
						include_headers?: [string]: string
						include_images?: bool

						// List of specific sitemap URLs to use for crawling. Only valid when parse_type is 'sitemap'.
						specific_sitemaps?: [...string]
						use_browser_rendering?: bool
					})

					// Available values: "sitemap", "feed-rss", "crawl".
					parse_type?: string
					store_options?: close({
						r2_jurisdiction?: string

						// Available values: "r2".
						storage_type?: string
						storage_id?:   string
					})
				})

				// List of path patterns to include. Uses micromatch glob syntax: * matches
				// within a path segment, ** matches across path segments (e.g., /blog/**
				// matches /blog/post and /blog/2024/post)
				include_items?: [...string]
				prefix?:          string
				r2_jurisdiction?: string
			})
			created_at?: string

			// Available values: "@cf/baai/bge-reranker-base", "".
			reranking_model?: string
			created_by?:      string

			// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast",
			// "@cf/zai-org/glm-4.7-flash", "@cf/meta/llama-3.1-8b-instruct-fast",
			// "@cf/meta/llama-3.1-8b-instruct-fp8",
			// "@cf/meta/llama-4-scout-17b-16e-instruct", "@cf/qwen/qwen3-30b-a3b-fp8",
			// "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b",
			// "@cf/moonshotai/kimi-k2-instruct", "@cf/google/gemma-3-12b-it",
			// "@cf/google/gemma-4-26b-a4b-it", "@cf/moonshotai/kimi-k2.5",
			// "anthropic/claude-3-7-sonnet", "anthropic/claude-sonnet-4",
			// "anthropic/claude-opus-4", "anthropic/claude-3-5-haiku",
			// "cerebras/qwen-3-235b-a22b-instruct", "cerebras/qwen-3-235b-a22b-thinking",
			// "cerebras/llama-3.3-70b", "cerebras/llama-4-maverick-17b-128e-instruct",
			// "cerebras/llama-4-scout-17b-16e-instruct", "cerebras/gpt-oss-120b",
			// "google-ai-studio/gemini-2.5-flash", "google-ai-studio/gemini-2.5-pro",
			// "grok/grok-4", "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant",
			// "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
			rewrite_model?: string

			// Interval between automatic syncs, in seconds. Allowed values: 900 (15min),
			// 1800 (30min), 3600 (1h), 7200 (2h), 14400 (4h), 21600 (6h), 43200 (12h),
			// 86400 (24h).
			// Available values: 900, 1800, 3600, 7200, 14400, 21600, 43200, 86400.
			sync_interval?: number
			enable?:        bool

			// Available values: "r2", "web-crawler".
			type?:               string
			engine_version?:     number
			last_activity?:      string
			max_num_results?:    number
			modified_at?:        string
			modified_by?:        string
			namespace?:          string
			paused?:             bool
			public_endpoint_id?: string
			reranking?:          bool
			rewrite_query?:      bool
			score_threshold?:    number
			source?:             string
			status?:             string
			token_id?:           string
		})]])

		// Filter instances whose id contains this string (case-insensitive).
		search?: string
	})
}
