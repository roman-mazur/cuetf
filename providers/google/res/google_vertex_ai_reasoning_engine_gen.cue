package res

import "list"

google_vertex_ai_reasoning_engine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_reasoning_engine")
	close({
		context_spec?: matchN(1, [#context_spec, list.MaxItems(1) & [...#context_spec]])
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		spec?: matchN(1, [#spec, list.MaxItems(1) & [...#spec]])
		timeouts?: #timeouts

		// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format,
		// with nanosecond resolution and up to nine fractional digits.
		create_time?: string

		// This field uses a custom implementation please refer to documentation under
		// /hashicorp/terraform-provider-google-beta/website/docs/r/vertex_ai_reasoning_engine.html.markdown
		// for specifics
		deletion_policy?: string

		// The description of the ReasoningEngine.
		description?: string

		// The display name of the ReasoningEngine.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// The labels associated with this ReasoningEngine. You can use these to
		// organize and group your ReasoningEngines.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The generated name of the ReasoningEngine, in the format
		// projects/{project}/locations/{location}/reasoningEngines/{reasoningEngine}
		name?: string

		// The region of the reasoning engine. eg us-central1
		region?:  string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu"
		// format, with nanosecond resolution and up to nine fractional digits.
		update_time?: string
	})

	#context_spec: close({
		memory_bank_config?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config"]])
	})

	#encryption_spec: close({
		// Required. The Cloud KMS resource identifier of the customer managed
		// encryption key used to protect a resource. Has the form:
		// projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key.
		// The key needs to be in the same region as where the compute resource
		// is created.
		kms_key_name!: string
	})

	#spec: close({
		build_spec?: matchN(1, [_#defs."/$defs/spec/$defs/build_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/build_spec"]])
		container_spec?: matchN(1, [_#defs."/$defs/spec/$defs/container_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/container_spec"]])
		deployment_spec?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/deployment_spec"]])
		package_spec?: matchN(1, [_#defs."/$defs/spec/$defs/package_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/package_spec"]])
		source_code_spec?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec"]])

		// Optional. The OSS agent framework used to develop the agent.
		agent_framework?: string

		// Optional. Declarations for object class methods in OpenAPI
		// specification format.
		//
		// **Note**: When deploying via Terraform, this field must be populated manually.
		// Otherwise, client SDKs (like 'agent_engines.get()') will not be able to
		// discover the methods, and calls to the engine (or A2A integrations) will
		// fail.
		//
		// Depending on the template/framework used ('agent_framework'), the required
		// class methods and their parameters differ:
		//
		// **Warning**: The configuration snippets below are illustrative, may not be
		// exhaustive, and could stop working over time. For the most up-to-date method
		// lists and schemas, please consult the respective SDK source code:
		// * For Google ADK: See [ADK Python SDK
		// cli_deploy.py](https://github.com/google/adk-python/blob/68a780306e3bdd648a882ef34c0abf8e5148353e/src/google/adk/cli/cli_deploy.py#L109).
		// * For Langchain: See [Vertex AI Python SDK
		// langchain.py](https://github.com/googleapis/python-aiplatform/blob/c8a38a085931b01f4d6071f0ab7a64cb42851829/agentplatform/agent_engines/templates/langchain.py#L642-L717).
		//
		// ### 1. Langchain Template
		// * 'query' (api_mode = "sync" or empty)
		// * 'stream_query' (api_mode = "stream")
		//
		// Example for Langchain:
		// '''hcl
		// class_methods = jsonencode([
		// {
		// name = "query"
		// api_mode = "sync"
		// description = "Queries the reasoning engine"
		// parameters = {
		// type = "object"
		// required = ["input"]
		// properties = {
		// input = {
		// type = "string"
		// description = "The input prompt"
		// }
		// }
		// }
		// },
		// {
		// name = "stream_query"
		// api_mode = "stream"
		// description = "Streams queries from the reasoning engine"
		// parameters = {
		// type = "object"
		// required = ["input"]
		// properties = {
		// input = {
		// type = "string"
		// description = "The input prompt"
		// }
		// }
		// }
		// }
		// ])
		// '''
		//
		// ### 2. Google ADK Template (Standard - No A2A)
		// For standard Google ADK (Agent Development Kit) deployments, you must define
		// the following 11 methods:
		//
		// Example for Standard ADK:
		// '''hcl
		// class_methods = jsonencode([
		// {
		// name = "get_session"
		// api_mode = ""
		// description = "Retrieve session by ID"
		// parameters = {
		// type = "object"
		// required = ["user_id", "session_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "async_get_session"
		// api_mode = "async"
		// description = "Retrieve session asynchronously by ID"
		// parameters = {
		// type = "object"
		// required = ["user_id", "session_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "list_sessions"
		// api_mode = ""
		// description = "List all sessions for a user"
		// parameters = {
		// type = "object"
		// required = ["user_id"]
		// properties = {
		// user_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "async_list_sessions"
		// api_mode = "async"
		// description = "List all sessions for a user asynchronously"
		// parameters = {
		// type = "object"
		// required = ["user_id"]
		// properties = {
		// user_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "create_session"
		// api_mode = ""
		// description = "Create a new session"
		// parameters = {
		// type = "object"
		// required = ["user_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// state = { type = "object" }
		// }
		// }
		// },
		// {
		// name = "async_create_session"
		// api_mode = "async"
		// description = "Create a new session asynchronously"
		// parameters = {
		// type = "object"
		// required = ["user_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// state = { type = "object" }
		// }
		// }
		// },
		// {
		// name = "delete_session"
		// api_mode = ""
		// description = "Delete session by ID"
		// parameters = {
		// type = "object"
		// required = ["user_id", "session_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "async_delete_session"
		// api_mode = "async"
		// description = "Delete session asynchronously by ID"
		// parameters = {
		// type = "object"
		// required = ["user_id", "session_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "stream_query"
		// api_mode = "stream"
		// description = "Stream queries from the agent"
		// parameters = {
		// type = "object"
		// required = ["message", "user_id"]
		// properties = {
		// message = { description = "Message string or object" }
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// run_config = { type = "object" }
		// }
		// }
		// },
		// {
		// name = "async_stream_query"
		// api_mode = "async_stream"
		// description = "Stream queries asynchronously from the agent"
		// parameters = {
		// type = "object"
		// required = ["message", "user_id"]
		// properties = {
		// message = { description = "Message string or object" }
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// session_events = { type = "array", items = { type = "object" } }
		// run_config = { type = "object" }
		// }
		// }
		// },
		// {
		// name = "streaming_agent_run_with_events"
		// api_mode = "async_stream"
		// description = "Stream agent run with events asynchronously"
		// parameters = {
		// type = "object"
		// required = ["request_json"]
		// properties = {
		// request_json = { type = "string" }
		// }
		// }
		// }
		// ])
		// '''
		//
		// ### 3. Google ADK Template (A2A-Enabled)
		// If the agent integrates with the Gemini Enterprise Agent Registry (A2A), you
		// must inject the 'a2a_agent_card' JSON metadata as a string **specifically
		// inside the 'async_create_session' method definition**:
		//
		// Example for A2A-Enabled ADK:
		// '''hcl
		// locals {
		// # Construct the A2A endpoint URL
		// a2a_url =
		// "https://us-central1-aiplatform.googleapis.com/v1/projects/my-project/locations/us-central1/reasoningEngines/my-agent/a2a"
		//
		// agent_card = {
		// name = "my-agent"
		// description = "A2A Agent"
		// version = "1.0.0"
		// preferred_transport = "HTTP_JSON"
		// supported_interfaces = [{ url = local.a2a_url, protocol_binding = "HTTP_JSON" }]
		// capabilities = { streaming = true }
		// }
		// }
		//
		// # In class_methods, append "a2a_agent_card" key ONLY to the "async_create_session" method:
		// class_methods = jsonencode([
		// # ... other 10 standard methods (same as Standard ADK) ...
		// {
		// name = "async_create_session"
		// api_mode = "async"
		// description = "Create a new session asynchronously"
		// parameters = {
		// type = "object"
		// required = ["user_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// state = { type = "object" }
		// }
		// }
		// # Inject the serialized Agent Card here
		// a2a_agent_card = jsonencode(local.agent_card)
		// }
		// ])
		// '''
		class_methods?: string

		// The identity to use for the Reasoning Engine.
		effective_identity?: string

		// Optional. The identity type to use for the Reasoning Engine.
		// If not specified, the 'service_account' field will be used if set,
		// otherwise the default Vertex AI Reasoning Engine Service Agent in the project will be used.
		// Possible values:
		// * 'SERVICE_ACCOUNT': Use a custom service account if the 'service_account'
		// field is set, otherwise use the default Vertex AI Reasoning Engine Service
		// Agent in the project.
		// * 'AGENT_IDENTITY': Use Agent Identity. The 'service_account' field must not
		// be set. Possible values: ["SERVICE_ACCOUNT", "AGENT_IDENTITY"]
		identity_type?: string

		// Optional. The service account that the Reasoning Engine artifact runs
		// as. It should have "roles/storage.objectViewer" for reading the user
		// project's Cloud Storage and "roles/aiplatform.user" for using Vertex
		// extensions. If not specified, the Vertex AI Reasoning Engine service
		// Agent in the project will be used.
		service_account?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config": close({
		customization_configs?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs", [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs"]])
		generation_config?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/generation_config", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/generation_config"]])
		similarity_search_config?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/similarity_search_config", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/similarity_search_config"]])
		structured_memory_configs?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/structured_memory_configs", [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/structured_memory_configs"]])
		ttl_config?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/ttl_config", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/ttl_config"]])

		// If true, no memory revisions will be created for any requests to the Memory Bank.
		disable_memory_revisions?: bool
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs": close({
		consolidation_config?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/consolidation_config", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/consolidation_config"]])
		generate_memories_examples?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples", [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples"]])
		memory_topics?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/memory_topics", [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/memory_topics"]])

		// Indicates whether natural language memory generation should be disabled.
		disable_natural_language_memories?: bool

		// Optional. Generate memories in the third person if set to true.
		enable_third_person_memories?: bool

		// Optional. List of scope keys that this customization config applies to.
		scope_keys?: [...string]
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/consolidation_config": close({
		// Number of revisions to consider per candidate count.
		revisions_per_candidate_count?: number
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples": close({
		conversation_source?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source"]])
		generated_memories?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/generated_memories", [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/generated_memories"]])
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source": close({
		events?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events", [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events"]])
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events": close({
		content!: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content"]])
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content": close({
		parts!: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts", [_, ...] & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts"]])

		// The producer of the content. Must be either 'user' or 'model'. If not set,
		// the service will default to 'user'.
		role?: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts": close({
		audio_transcription?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/audio_transcription", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/audio_transcription"]])
		code_execution_result?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/code_execution_result", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/code_execution_result"]])
		executable_code?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/executable_code", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/executable_code"]])
		file_data?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/file_data", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/file_data"]])
		function_call?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/function_call", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/function_call"]])
		function_response?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/function_response", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/function_response"]])
		inline_data?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/inline_data", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/inline_data"]])
		video_metadata?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/video_metadata", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/video_metadata"]])

		// The text content of the part.
		text?: string

		// Indicates whether the part represents the model's thought process or reasoning.
		thought?: bool
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/audio_transcription": close({
		words?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/audio_transcription/$defs/words", [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/audio_transcription/$defs/words"]])

		// A label identifying the speaker of this audio segment (e.g. spk_1, spk_2).
		// Present when diarization is set.
		speaker_label?: string

		// The transcription text of this audio segment.
		text!: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/audio_transcription/$defs/words": close({
		// End offset in time of the word relative to the start of the audio.
		end_offset?: string

		// Start offset in time of the word relative to the start of the audio.
		start_offset?: string

		// Transcript of the word.
		word!: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/code_execution_result": close({
		// The identifier of the ExecutableCode part this result is for.
		id?: string

		// Outcome of the code execution. Possible values: ["OUTCOME_UNSPECIFIED",
		// "OUTCOME_OK", "OUTCOME_FAILED", "OUTCOME_DEADLINE_EXCEEDED"]
		outcome!: string

		// Contains stdout when code execution is successful, stderr or other description otherwise.
		output?: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/executable_code": close({
		// The code to be executed.
		code!: string

		// Unique identifier of the ExecutableCode part.
		id?: string

		// Supported programming languages for the generated code. Possible values:
		// ["LANGUAGE_UNSPECIFIED", "PYTHON", "BASH"]
		language!: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/file_data": close({
		// The URI of the file in Google Cloud Storage.
		file_uri!: string

		// The IANA standard MIME type of the source data.
		mime_type!: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/function_call": close({
		// The function parameters and values in JSON object format.
		args?: string

		// The unique id of the function call.
		id?: string

		// The name of the function to call.
		name?: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/function_response": close({
		// The id of the function call this response is for.
		id?: string

		// The name of the function to call.
		name!: string

		// The function response in JSON object format.
		response?: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/inline_data": close({
		// Raw bytes, which should be base64-encoded.
		data!: string

		// The IANA standard MIME type of the source data.
		mime_type!: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/conversation_source/$defs/events/$defs/content/$defs/parts/$defs/video_metadata": close({
		// The end offset of the video.
		end_offset?: string

		// The start offset of the video.
		start_offset?: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/generated_memories": close({
		topics?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/generated_memories/$defs/topics", [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/generated_memories/$defs/topics"]])

		// Represents the fact to generate a memory from.
		fact!: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/generate_memories_examples/$defs/generated_memories/$defs/topics": close({
		// Represents the custom memory topic label.
		custom_memory_topic_label?: string

		// Represents the managed memory topic. Possible values: ["USER_PERSONAL_INFO",
		// "USER_PREFERENCES", "KEY_CONVERSATION_DETAILS", "EXPLICIT_INSTRUCTIONS"]
		managed_memory_topic?: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/memory_topics": close({
		custom_memory_topic?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/memory_topics/$defs/custom_memory_topic", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/memory_topics/$defs/custom_memory_topic"]])
		managed_memory_topic?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/memory_topics/$defs/managed_memory_topic", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/memory_topics/$defs/managed_memory_topic"]])
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/memory_topics/$defs/custom_memory_topic": close({
		// Description of custom memory topic.
		description?: string

		// Label of custom memory topic.
		label?: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/customization_configs/$defs/memory_topics/$defs/managed_memory_topic": close({
		// Managed topic enum (e.g. USER_PREFERENCES, EXPLICIT_INSTRUCTIONS).
		managed_topic_enum?: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/generation_config": close({
		generation_trigger_config?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/generation_config/$defs/generation_trigger_config", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/generation_config/$defs/generation_trigger_config"]])

		// The model used to generate memories. Format:
		// projects/{project}/locations/{location}/publishers/google/models/{model}.
		model!: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/generation_config/$defs/generation_trigger_config": close({
		generation_rule?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/generation_config/$defs/generation_trigger_config/$defs/generation_rule", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/generation_config/$defs/generation_trigger_config/$defs/generation_rule"]])
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/generation_config/$defs/generation_trigger_config/$defs/generation_rule": close({
		// Optional. Specifies to trigger generation when the event count reaches this limit.
		event_count?: number

		// Optional. Specifies to trigger generation at a fixed interval. The duration
		// must have a minute-level granularity.
		fixed_interval?: string

		// Optional. Specifies to trigger generation if the stream is inactive for the
		// specified duration after the most recent event. The duration must have a
		// minute-level granularity.
		idle_duration?: string

		// Optional. Re-include the last N already-processed events in the next window.
		overlap_event_count?: number
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/similarity_search_config": close({
		// The model used to generate embeddings to lookup similar memories. Format:
		// projects/{project}/locations/{location}/publishers/google/models/{model}.
		embedding_model!: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/structured_memory_configs": close({
		schema_configs?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/structured_memory_configs/$defs/schema_configs", [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/structured_memory_configs/$defs/schema_configs"]])

		// Optional. List of scope keys that this structured memory config applies to.
		scope_keys?: [...string]
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/structured_memory_configs/$defs/schema_configs": close({
		// Required. Unique ID identifying the memory schema.
		id!: string

		// Optional. The memory schema defined as an OpenAPI Schema Object JSON string.
		memory_schema?: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/ttl_config": close({
		granular_ttl_config?: matchN(1, [_#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/ttl_config/$defs/granular_ttl_config", list.MaxItems(1) & [..._#defs."/$defs/context_spec/$defs/memory_bank_config/$defs/ttl_config/$defs/granular_ttl_config"]])

		// The default TTL duration of the memories in the Memory Bank.
		default_ttl?: string

		// The default TTL duration of the memory revisions in the Memory Bank.
		memory_revision_default_ttl?: string
	})

	_#defs: "/$defs/context_spec/$defs/memory_bank_config/$defs/ttl_config/$defs/granular_ttl_config": close({
		// The TTL duration for memories uploaded via CreateMemory.
		create_ttl?: string

		// The TTL duration for memories newly generated via GenerateMemories.
		generate_created_ttl?: string

		// The TTL duration for memories updated via GenerateMemories.
		generate_updated_ttl?: string
	})

	_#defs: "/$defs/spec/$defs/build_spec": close({
		// Optional. The service account that the Cloud Build builder runs as.
		service_account?: string

		// Optional. The resource name of the Cloud Build WorkerPool to use for the build.
		worker_pool?: string
	})

	_#defs: "/$defs/spec/$defs/container_spec": close({
		// The Artifact Registry Docker image URI (e.g.,
		// 'us-central1-docker.pkg.dev/my-project/my-repo/my-image:tag') of the
		// container image that is to be run on each worker replica.
		image_uri!: string

		// Optional. The port that the container listens on for incoming requests. If
		// not specified, defaults to 8080.
		port?: number
	})

	_#defs: "/$defs/spec/$defs/deployment_spec": close({
		agent_gateway_config?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/agent_gateway_config", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/agent_gateway_config"]])
		env?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/env", [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/env"]])
		psc_interface_config?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config"]])
		secret_env?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/secret_env", [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/secret_env"]])

		// Optional. Concurrency for each container and agent server.
		// Recommended value: 2 * cpu + 1. Defaults to 9.
		container_concurrency?: number

		// Optional. The maximum number of application instances that can be
		// launched to handle increased traffic. Defaults to 100.
		// Range: [1, 1000]. If VPC-SC or PSC-I is enabled, the acceptable
		// range is [1, 100].
		max_instances?: number

		// Optional. The minimum number of application instances that will be
		// kept running at all times. Defaults to 1. Range: [0, 10].
		min_instances?: number

		// Optional. Resource limits for each container.
		// Only 'cpu' and 'memory' keys are supported.
		//
		// Defaults to {"cpu": "4", "memory": "4Gi"}.
		//
		// The only supported values for CPU are '1', '2', '4', '6' and '8'.
		// For more information, go to
		// https://cloud.google.com/run/docs/configuring/cpu.
		//
		// The only supported values for memory are '1Gi', '2Gi', ... '32 Gi'.
		// For more information, go to
		// https://cloud.google.com/run/docs/configuring/memory-limits.
		resource_limits?: [string]: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/agent_gateway_config": close({
		agent_to_anywhere_config?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/agent_gateway_config/$defs/agent_to_anywhere_config", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/agent_gateway_config/$defs/agent_to_anywhere_config"]])
		client_to_agent_config?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/agent_gateway_config/$defs/client_to_agent_config", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/agent_gateway_config/$defs/client_to_agent_config"]])
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/agent_gateway_config/$defs/agent_to_anywhere_config": close({
		// Required. The resource name of the Agent Gateway for outbound traffic.
		agent_gateway!: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/agent_gateway_config/$defs/client_to_agent_config": close({
		// Required. The resource name of the Agent Gateway to use for inbound traffic.
		agent_gateway!: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/env": close({
		// The name of the environment variable. Must be a valid
		// C identifier.
		name!: string

		// Variables that reference a $(VAR_NAME) are expanded using
		// the previous defined environment variables in the container
		// and any service environment variables. If a variable cannot
		// be resolved, the reference in the input string will be
		// unchanged. The $(VAR_NAME) syntax can be escaped with a
		// double $$, ie: $$(VAR_NAME). Escaped references will never
		// be expanded, regardless of whether the variable exists
		// or not.
		value!: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config": close({
		dns_peering_configs?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config/$defs/dns_peering_configs", [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config/$defs/dns_peering_configs"]])

		// Optional. The name of the Compute Engine network attachment
		// to attach to the resource within the region and user project.
		// To specify this field, you must have already created a network attachment.
		// This field is only used for resources using PSC-Interface.
		network_attachment?: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config/$defs/dns_peering_configs": close({
		// Required. The DNS name suffix of the zone being peered
		// to, e.g., "my-internal-domain.corp.".
		// Must end with a dot.
		domain!: string

		// Required. The VPC network name in the targetProject
		// where the DNS zone specified by 'domain' is visible.
		target_network!: string

		// Required. The project id hosting the Cloud DNS managed
		// zone that contains the 'domain'.
		// The Vertex AI service Agent requires the dns.peer role
		// on this project.
		target_project!: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/secret_env": close({
		secret_ref!: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/secret_env/$defs/secret_ref", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/secret_env/$defs/secret_ref"]])

		// The name of the environment variable. Must be a valid C
		// identifier.
		name!: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/secret_env/$defs/secret_ref": close({
		// The name of the secret in Cloud Secret Manager.
		// Format: {secret_name}.
		secret!: string

		// The Cloud Secret Manager secret version. Can be 'latest'
		// for the latest version, an integer for a specific
		// version, or a version alias.
		version?: string
	})

	_#defs: "/$defs/spec/$defs/package_spec": close({
		// Optional. The Cloud Storage URI of the dependency files in tar.gz
		// format.
		dependency_files_gcs_uri?: string

		// Optional. The Cloud Storage URI of the pickled python object.
		pickle_object_gcs_uri?: string

		// Optional. The Python version. Currently support 3.8, 3.9, 3.10,
		// 3.11, 3.12, 3.13. If not specified, default value is 3.10.
		python_version?: string

		// Optional. The Cloud Storage URI of the requirements.txtfile
		requirements_gcs_uri?: string
	})

	_#defs: "/$defs/spec/$defs/source_code_spec": close({
		agent_config_source?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/agent_config_source", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/agent_config_source"]])
		developer_connect_source?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source"]])
		image_spec?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/image_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/image_spec"]])
		inline_source?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/inline_source", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/inline_source"]])
		python_spec?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/python_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/python_spec"]])
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/agent_config_source": close({
		adk_config?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/agent_config_source/$defs/adk_config", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/agent_config_source/$defs/adk_config"]])
		inline_source?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/agent_config_source/$defs/inline_source", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/agent_config_source/$defs/inline_source"]])
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/agent_config_source/$defs/adk_config": close({
		// Required. The value of the ADK config in JSON format.
		json_config!: string
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/agent_config_source/$defs/inline_source": close({
		// Required. Input only. The application source code archive, provided as a
		// compressed tarball (.tar.gz) file.
		source_archive!: string
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source": close({
		config!: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source/$defs/config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source/$defs/config"]])
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source/$defs/config": close({
		// Directory, relative to the source root, in which to run the build.
		dir!: string

		// The Developer Connect Git repository link, formatted as
		// projects/*/locations/*/connections/*/gitRepositoryLink/*.
		git_repository_link!: string

		// The revision to fetch from the Git repository such as a branch, a tag, a
		// commit SHA, or any Git ref.
		revision!: string
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/image_spec": close({
		// Build arguments to be used. They will be passed through --build-arg flags.
		build_args?: [string]: string
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/inline_source": close({
		// Required. Input only.
		// The application source code archive, provided as a compressed
		// tarball (.tar.gz) file. A base64-encoded string.
		source_archive?: string
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/python_spec": close({
		// Optional. The Python module to load as the entrypoint,
		// specified as a fully qualified module name. For example:
		// path.to.agent. If not specified, defaults to "agent".
		// The project root will be added to Python sys.path, allowing
		// imports to be specified relative to the root.
		entrypoint_module?: string

		// Optional. The name of the callable object within the
		// entrypointModule to use as the application If not specified,
		// defaults to "root_agent".
		entrypoint_object?: string

		// Optional. The path to the requirements file, relative to the
		// source root. If not specified, defaults to "requirements.txt".
		requirements_file?: string

		// Optional. The version of Python to use. Support version
		// includes 3.9, 3.10, 3.11, 3.12, 3.13. If not specified,
		// default value is 3.10.
		version?: string
	})
}
