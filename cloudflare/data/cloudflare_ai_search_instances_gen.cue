package data

#cloudflare_ai_search_instances: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_ai_search_instances")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Search by id
		search?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			ai_gateway_id?: string

			// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast",
			// "@cf/zai-org/glm-4.7-flash",
			// "@cf/meta/llama-3.1-8b-instruct-fast",
			// "@cf/meta/llama-3.1-8b-instruct-fp8",
			// "@cf/meta/llama-4-scout-17b-16e-instruct",
			// "@cf/qwen/qwen3-30b-a3b-fp8",
			// "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b",
			// "@cf/moonshotai/kimi-k2-instruct",
			// "@cf/google/gemma-3-12b-it", "anthropic/claude-3-7-sonnet",
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
			chunk_overlap?:   number
			chunk_size?:      number
			created_at?:      string
			created_by?:      string

			// Available values: "@cf/qwen/qwen3-embedding-0.6b",
			// "@cf/baai/bge-m3", "@cf/baai/bge-large-en-v1.5",
			// "@cf/google/embeddinggemma-300m",
			// "google-ai-studio/gemini-embedding-001",
			// "openai/text-embedding-3-small",
			// "openai/text-embedding-3-large", "".
			embedding_model?: string
			enable?:          bool

			// Available values: "max", "rrf".
			fusion_method?:         string
			hybrid_search_enabled?: bool

			// Use your AI Search ID.
			id?:                 string
			last_activity?:      string
			max_num_results?:    number
			modified_at?:        string
			modified_by?:        string
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
			// "@cf/google/gemma-3-12b-it", "anthropic/claude-3-7-sonnet",
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
			token_id?:        string

			// Available values: "r2", "web-crawler".
			type?:           string
			vectorize_name?: string
			custom_metadata?: matchN(1, [close({
				// Available values: "text", "number", "boolean".
				data_type?:  string
				field_name?: string
			}), [...close({
				// Available values: "text", "number", "boolean".
				data_type?:  string
				field_name?: string
			})]])
			metadata?: close({
				created_from_aisearch_wizard?: bool
				worker_domain?:                string
			})
			public_endpoint_params?: close({
				chat_completions_endpoint?: close({
					// Disable chat completions endpoint for this public endpoint
					disabled?: bool
				})
				authorized_hosts?: [...string]
				enabled?: bool
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
				// Controls how keyword search terms are matched. exact_match
				// requires all terms to appear (AND); fuzzy_match returns
				// results containing any term (OR). Defaults to exact_match.
				// Available values: "exact_match", "fuzzy_match".
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
					parse_options?: close({
						include_headers?: [string]: string
						include_images?: bool

						// List of specific sitemap URLs to use for crawling. Only valid
						// when parse_type is 'sitemap'.
						specific_sitemaps?: [...string]
						use_browser_rendering?: bool
					})

					// Available values: "sitemap", "feed-rss".
					parse_type?: string
					store_options?: close({
						r2_jurisdiction?: string
						storage_id?:      string

						// Available values: "r2".
						storage_type?: string
					})
				})
			})
		}), [...close({
			ai_gateway_id?: string

			// Available values: "@cf/meta/llama-3.3-70b-instruct-fp8-fast",
			// "@cf/zai-org/glm-4.7-flash",
			// "@cf/meta/llama-3.1-8b-instruct-fast",
			// "@cf/meta/llama-3.1-8b-instruct-fp8",
			// "@cf/meta/llama-4-scout-17b-16e-instruct",
			// "@cf/qwen/qwen3-30b-a3b-fp8",
			// "@cf/deepseek-ai/deepseek-r1-distill-qwen-32b",
			// "@cf/moonshotai/kimi-k2-instruct",
			// "@cf/google/gemma-3-12b-it", "anthropic/claude-3-7-sonnet",
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
			chunk_overlap?:   number
			chunk_size?:      number
			created_at?:      string
			created_by?:      string

			// Available values: "@cf/qwen/qwen3-embedding-0.6b",
			// "@cf/baai/bge-m3", "@cf/baai/bge-large-en-v1.5",
			// "@cf/google/embeddinggemma-300m",
			// "google-ai-studio/gemini-embedding-001",
			// "openai/text-embedding-3-small",
			// "openai/text-embedding-3-large", "".
			embedding_model?: string
			enable?:          bool

			// Available values: "max", "rrf".
			fusion_method?:         string
			hybrid_search_enabled?: bool

			// Use your AI Search ID.
			id?:                 string
			last_activity?:      string
			max_num_results?:    number
			modified_at?:        string
			modified_by?:        string
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
			// "@cf/google/gemma-3-12b-it", "anthropic/claude-3-7-sonnet",
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
			token_id?:        string

			// Available values: "r2", "web-crawler".
			type?:           string
			vectorize_name?: string
			custom_metadata?: matchN(1, [close({
				// Available values: "text", "number", "boolean".
				data_type?:  string
				field_name?: string
			}), [...close({
				// Available values: "text", "number", "boolean".
				data_type?:  string
				field_name?: string
			})]])
			metadata?: close({
				created_from_aisearch_wizard?: bool
				worker_domain?:                string
			})
			public_endpoint_params?: close({
				chat_completions_endpoint?: close({
					// Disable chat completions endpoint for this public endpoint
					disabled?: bool
				})
				authorized_hosts?: [...string]
				enabled?: bool
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
				// Controls how keyword search terms are matched. exact_match
				// requires all terms to appear (AND); fuzzy_match returns
				// results containing any term (OR). Defaults to exact_match.
				// Available values: "exact_match", "fuzzy_match".
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
					parse_options?: close({
						include_headers?: [string]: string
						include_images?: bool

						// List of specific sitemap URLs to use for crawling. Only valid
						// when parse_type is 'sitemap'.
						specific_sitemaps?: [...string]
						use_browser_rendering?: bool
					})

					// Available values: "sitemap", "feed-rss".
					parse_type?: string
					store_options?: close({
						r2_jurisdiction?: string
						storage_id?:      string

						// Available values: "r2".
						storage_type?: string
					})
				})
			})
		})]])
	})
}
