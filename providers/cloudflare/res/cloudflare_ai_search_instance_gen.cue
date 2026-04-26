package res

#cloudflare_ai_search_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_ai_search_instance")
	close({
		account_id!:    string
		ai_gateway_id?: string

		// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast",
		// "@cf/zai-org/glm-4.7-flash",
		// "@cf/meta/llama-3.1-8b-instruct-fast",
		// "@cf/meta/llama-3.1-8b-instruct-fp8",
		// "@cf/meta/llama-4-scout-17b-16e-instruct",
		// "@cf/qwen/qwen3-30b-a3b-fp8",
		// "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b",
		// "@cf/moonshotai/kimi-k2-instruct",
		// "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it",
		// "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet",
		// "anthropic/claude-sonnet-4", "anthropic/claude-opus-4",
		// "anthropic/claude-3-5-haiku",
		// "cerebras/qwen-3-235b-a22b-instruct",
		// "cerebras/qwen-3-235b-a22b-thinking",
		// "cerebras/llama-3.3-70b",
		// "cerebras/llama-4-maverick-17b-128e-instruct",
		// "cerebras/llama-4-scout-17b-16e-instruct",
		// "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash",
		// "google-ai-studio/gemini-2.5-pro", "grok/grok-4",
		// "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant",
		// "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
		aisearch_model?: string
		cache?:          bool

		// Available values: "super_strict_match", "close_enough",
		// "flexible_friend", "anything_goes".
		cache_threshold?: string
		chunk?:           bool
		chunk_overlap?:   number
		chunk_size?:      number
		created_at?:      string
		created_by?:      string

		// Available values: "@cf/qwen/qwen3-embedding-0.6b",
		// "@cf/baai/bge-m3", "@cf/baai/bge-large-en-v1.5",
		// "@cf/google/embeddinggemma-300m",
		// "google-ai-studio/gemini-embedding-001",
		// "google-ai-studio/gemini-embedding-2-preview",
		// "openai/text-embedding-3-small",
		// "openai/text-embedding-3-large", "".
		embedding_model?: string
		enable?:          bool
		engine_version?:  number

		// Available values: "max", "rrf".
		fusion_method?: string

		// AI Search instance ID. Lowercase alphanumeric, hyphens, and
		// underscores.
		id!:                 string
		last_activity?:      string
		max_num_results?:    number
		modified_at?:        string
		modified_by?:        string
		namespace?:          string
		paused?:             bool
		public_endpoint_id?: string
		reranking?:          bool

		// Available values: "@cf/baai/bge-reranker-base", "".
		reranking_model?: string

		// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast",
		// "@cf/zai-org/glm-4.7-flash",
		// "@cf/meta/llama-3.1-8b-instruct-fast",
		// "@cf/meta/llama-3.1-8b-instruct-fp8",
		// "@cf/meta/llama-4-scout-17b-16e-instruct",
		// "@cf/qwen/qwen3-30b-a3b-fp8",
		// "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b",
		// "@cf/moonshotai/kimi-k2-instruct",
		// "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it",
		// "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet",
		// "anthropic/claude-sonnet-4", "anthropic/claude-opus-4",
		// "anthropic/claude-3-5-haiku",
		// "cerebras/qwen-3-235b-a22b-instruct",
		// "cerebras/qwen-3-235b-a22b-thinking",
		// "cerebras/llama-3.3-70b",
		// "cerebras/llama-4-maverick-17b-128e-instruct",
		// "cerebras/llama-4-scout-17b-16e-instruct",
		// "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash",
		// "google-ai-studio/gemini-2.5-pro", "grok/grok-4",
		// "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant",
		// "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
		rewrite_model?:   string
		rewrite_query?:   bool
		score_threshold?: number
		source?:          string
		status?:          string
		summarization?:   bool

		// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast",
		// "@cf/zai-org/glm-4.7-flash",
		// "@cf/meta/llama-3.1-8b-instruct-fast",
		// "@cf/meta/llama-3.1-8b-instruct-fp8",
		// "@cf/meta/llama-4-scout-17b-16e-instruct",
		// "@cf/qwen/qwen3-30b-a3b-fp8",
		// "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b",
		// "@cf/moonshotai/kimi-k2-instruct",
		// "@cf/google/gemma-3-12b-it", "@cf/google/gemma-4-26b-a4b-it",
		// "@cf/moonshotai/kimi-k2.5", "anthropic/claude-3-7-sonnet",
		// "anthropic/claude-sonnet-4", "anthropic/claude-opus-4",
		// "anthropic/claude-3-5-haiku",
		// "cerebras/qwen-3-235b-a22b-instruct",
		// "cerebras/qwen-3-235b-a22b-thinking",
		// "cerebras/llama-3.3-70b",
		// "cerebras/llama-4-maverick-17b-128e-instruct",
		// "cerebras/llama-4-scout-17b-16e-instruct",
		// "cerebras/gpt-oss-120b", "google-ai-studio/gemini-2.5-flash",
		// "google-ai-studio/gemini-2.5-pro", "grok/grok-4",
		// "groq/llama-3.3-70b-versatile", "groq/llama-3.1-8b-instant",
		// "openai/gpt-5", "openai/gpt-5-mini", "openai/gpt-5-nano", "".
		summarization_model?: string

		// Interval between automatic syncs, in seconds. Allowed values:
		// 900 (15min), 1800 (30min), 3600 (1h), 7200 (2h), 14400 (4h),
		// 21600 (6h), 43200 (12h), 86400 (24h).
		// Available values: 900, 1800, 3600, 7200, 14400, 21600, 43200,
		// 86400.
		sync_interval?:                     number
		system_prompt_aisearch?:            string
		system_prompt_index_summarization?: string
		system_prompt_rewrite_query?:       string
		token_id?:                          string

		// Available values: "r2", "web-crawler".
		type?:           string
		vectorize_name?: string

		// Controls which storage backends are used during indexing.
		// Defaults to vector-only.
		index_method?: close({
			// Enable keyword (BM25) storage backend.
			keyword!: bool

			// Enable vector (embedding) storage backend.
			vector!: bool
		})
		custom_metadata?: matchN(1, [close({
			// Available values: "text", "number", "boolean", "datetime".
			data_type!:  string
			field_name!: string
		}), [...close({
			// Available values: "text", "number", "boolean", "datetime".
			data_type!:  string
			field_name!: string
		})]])
		indexing_options?: close({
			// Tokenizer used for keyword search indexing. porter provides
			// word-level tokenization with Porter stemming (good for natural
			// language queries). trigram enables character-level substring
			// matching (good for partial matches, code, identifiers).
			// Changing this triggers a full re-index. Defaults to porter.
			// Available values: "porter", "trigram".
			keyword_tokenizer?: string
		})
		metadata?: close({
			created_from_aisearch_wizard?: bool
			worker_domain?:                string
			search_for_agents?: close({
				hostname!:  string
				zone_id!:   string
				zone_name!: string
			})
		})
		public_endpoint_params?: close({
			authorized_hosts?: [...string]
			enabled?: bool
			chat_completions_endpoint?: close({
				// Disable chat completions endpoint for this public endpoint
				disabled?: bool
			})
			mcp?: close({
				description?: string

				// Disable MCP endpoint for this public endpoint
				disabled?: bool
			})
			rate_limit?: close({
				period_ms?: number
				requests?:  number

				// Available values: "fixed", "sliding".
				technique?: string
			})
			search_endpoint?: close({
				// Disable search endpoint for this public endpoint
				disabled?: bool
			})
		})
		retrieval_options?: close({
			// Metadata fields to boost search results by. Each entry
			// specifies a metadata field and an optional direction.
			// Direction defaults to 'asc' for numeric fields and 'exists'
			// for text/boolean fields. Fields must match 'timestamp' or a
			// defined custom_metadata field.
			boost_by?: matchN(1, [close({
				// Boost direction. 'desc' = higher values rank higher (e.g. newer
				// timestamps). 'asc' = lower values rank higher. 'exists' =
				// boost chunks that have the field. 'not_exists' = boost chunks
				// that lack the field. Optional - defaults to 'asc' for
				// numeric/datetime fields, 'exists' for text/boolean fields.
				// Available values: "asc", "desc", "exists", "not_exists".
				direction?: string

				// Metadata field name to boost by. Use 'timestamp' for document
				// freshness, or any custom_metadata field. Numeric and datetime
				// fields support asc/desc directions; text/boolean fields
				// support exists/not_exists.
				field!: string
			}), [...close({
				// Boost direction. 'desc' = higher values rank higher (e.g. newer
				// timestamps). 'asc' = lower values rank higher. 'exists' =
				// boost chunks that have the field. 'not_exists' = boost chunks
				// that lack the field. Optional - defaults to 'asc' for
				// numeric/datetime fields, 'exists' for text/boolean fields.
				// Available values: "asc", "desc", "exists", "not_exists".
				direction?: string

				// Metadata field name to boost by. Use 'timestamp' for document
				// freshness, or any custom_metadata field. Numeric and datetime
				// fields support asc/desc directions; text/boolean fields
				// support exists/not_exists.
				field!: string
			})]])

			// Controls which documents are candidates for BM25 scoring. 'and'
			// restricts candidates to documents containing all query terms;
			// 'or' includes any document containing at least one term,
			// ranked by BM25 relevance. Defaults to 'and'.
			// Available values: "and", "or".
			keyword_match_mode?: string
		})
		source_params?: close({
			// List of path patterns to exclude. Uses micromatch glob syntax:
			// * matches within a path segment, ** matches across path
			// segments (e.g., /admin/** matches /admin/users and
			// /admin/settings/advanced)
			exclude_items?: [...string]

			// List of path patterns to include. Uses micromatch glob syntax:
			// * matches within a path segment, ** matches across path
			// segments (e.g., /blog/** matches /blog/post and
			// /blog/2024/post)
			include_items?: [...string]
			prefix?:          string
			r2_jurisdiction?: string
			web_crawler?: close({
				crawl_options?: close({
					depth?:                  number
					include_external_links?: bool
					include_subdomains?:     bool
					max_age?:                number

					// Available values: "all", "sitemaps", "links".
					source?: string
				})
				parse_options?: close({
					// List of path-to-selector mappings for extracting specific
					// content from crawled pages. Each entry pairs a URL glob
					// pattern with a CSS selector. The first matching path wins.
					// Only the matched HTML fragment is stored and indexed.
					content_selector?: matchN(1, [close({
						// Glob pattern to match against the page URL path. Uses standard
						// glob syntax: * matches within a segment, ** crosses
						// directories.
						path!: string

						// CSS selector to extract content from pages matching the path
						// pattern. Supports standard CSS selectors including class, ID,
						// element, and attribute selectors.
						selector!: string
					}), [...close({
						// Glob pattern to match against the page URL path. Uses standard
						// glob syntax: * matches within a segment, ** crosses
						// directories.
						path!: string

						// CSS selector to extract content from pages matching the path
						// pattern. Supports standard CSS selectors including class, ID,
						// element, and attribute selectors.
						selector!: string
					})]])

					// List of specific sitemap URLs to use for crawling. Only valid
					// when parse_type is 'sitemap'.
					specific_sitemaps?: [...string]
					include_headers?: [string]: string
					include_images?:        bool
					use_browser_rendering?: bool
				})

				// Available values: "sitemap", "feed-rss", "crawl".
				parse_type?: string
				store_options?: close({
					r2_jurisdiction?: string
					storage_id!:      string

					// Available values: "r2".
					storage_type?: string
				})
			})
		})
	})
}
