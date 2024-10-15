package res

#aws_sns_topic_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sns_topic_subscription")
	arn?:                             string
	confirmation_timeout_in_minutes?: number
	confirmation_was_authenticated?:  bool
	delivery_policy?:                 string
	endpoint!:                        string
	endpoint_auto_confirms?:          bool
	filter_policy?:                   string
	filter_policy_scope?:             string
	id?:                              string
	owner_id?:                        string
	pending_confirmation?:            bool
	protocol!:                        string
	raw_message_delivery?:            bool
	redrive_policy?:                  string
	replay_policy?:                   string
	subscription_role_arn?:           string
	topic_arn!:                       string
}
