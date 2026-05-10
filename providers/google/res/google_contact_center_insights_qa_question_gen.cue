package res

import "list"

#google_contact_center_insights_qa_question: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_contact_center_insights_qa_question")
	close({
		answer_choices?: matchN(1, [#answer_choices, [...#answer_choices]])
		metrics?: matchN(1, [#metrics, list.MaxItems(1) & [...#metrics]])
		predefined_question_config?: matchN(1, [#predefined_question_config, list.MaxItems(1) & [...#predefined_question_config]])
		qa_question_data_options?: matchN(1, [#qa_question_data_options, list.MaxItems(1) & [...#qa_question_data_options]])
		timeouts?: #timeouts
		tuning_metadata?: matchN(1, [#tuning_metadata, list.MaxItems(1) & [...#tuning_metadata]])

		// Short, descriptive string, used in the UI where it's not
		// practical
		// to display the full question body. E.g., "Greeting".
		abbreviation?: string

		// Instructions describing how to determine the answer.
		answer_instructions?: string

		// The time at which this question was created.
		create_time?: string
		id?:          string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The resource name of the question.
		// Format:
		// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}/revisions/{revision}/qaQuestions/{qa_question}
		name?: string

		// Defines the order of the question within its parent scorecard
		// revision.
		order?:   number
		project?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		qa_scorecard!: string

		// Question text. E.g., "Did the agent greet the customer?"
		question_body?: string

		// The type of question.
		// Possible values:
		// CUSTOMIZABLE
		// PREDEFINED
		question_type?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		revision!: string

		// Questions are tagged for categorization and scoring. Tags can
		// either be:
		// - Default Tags: These are predefined categories. They are
		// identified by
		// their string value (e.g., "BUSINESS", "COMPLIANCE", and
		// "CUSTOMER").
		// - Custom Tags: These are user-defined categories. They are
		// identified by
		// their full resource name (e.g.,
		// projects/{project}/locations/{location}/qaQuestionTags/{qa_question_tag}).
		// Both default and custom tags are used to group questions and to
		// influence
		// the scoring of each question.
		tags?: [...string]

		// The most recent time at which the question was updated.
		update_time?: string
	})

	#answer_choices: close({
		// Boolean value.
		bool_value?: bool

		// A short string used as an identifier.
		key?: string

		// A value of "Not Applicable (N/A)". If provided, this field may
		// only
		// be set to 'true'. If a question receives this answer, it will
		// be
		// excluded from any score calculations.
		na_value?: bool

		// Numerical value.
		num_value?: number

		// Numerical score of the answer, used for generating the overall
		// score of
		// a QaScorecardResult. If the answer uses na_value, this field is
		// unused.
		score?: number

		// String value.
		str_value?: string
	})

	#metrics: close({
		// Accuracy of the model. Measures the percentage of correct
		// answers the
		// model gave on the test set.
		accuracy?: number
	})

	#predefined_question_config: close({
		// The type of the predefined question.
		// Possible values:
		// CONVERSATION_OUTCOME
		// CONVERSATION_OUTCOME_ESCALATION_INITIATOR_ROLE
		type?: string
	})

	#qa_question_data_options: close({
		conversation_data_options?: matchN(1, [_#defs."/$defs/qa_question_data_options/$defs/conversation_data_options", list.MaxItems(1) & [..._#defs."/$defs/qa_question_data_options/$defs/conversation_data_options"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#tuning_metadata: close({
		// A list of any applicable data validation warnings about the
		// question's
		// feedback labels.
		dataset_validation_warnings?: [...string]

		// Total number of valid labels provided for the question at the
		// time of
		// tuining.
		total_valid_label_count?: string

		// Error status of the tuning operation for the question. Will
		// only be set
		// if the tuning operation failed.
		tuning_error?: string
	})

	_#defs: "/$defs/qa_question_data_options/$defs/conversation_data_options": close({
		// Whether to include the per turn Dialogflow interaction data in
		// conversation
		// transcript.
		include_dialogflow_interaction_data?: bool
	})
}
