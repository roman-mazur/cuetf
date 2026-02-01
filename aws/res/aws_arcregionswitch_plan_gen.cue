package res

#aws_arcregionswitch_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_arcregionswitch_plan")
	close({
		arn?: string
		associated_alarms?: matchN(1, [#associated_alarms, [...#associated_alarms]])
		description?:    string
		execution_role!: string
		name!:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                          string
		primary_region?:                  string
		recovery_approach!:               string
		recovery_time_objective_minutes?: number
		timeouts?:                        #timeouts
		triggers?: matchN(1, [#triggers, [...#triggers]])
		regions!: [...string]
		workflow?: matchN(1, [#workflow, [...#workflow]])
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#associated_alarms: close({
		alarm_type!:          string
		cross_account_role?:  string
		external_id?:         string
		map_block_key!:       string
		resource_identifier!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	#triggers: close({
		conditions?: matchN(1, [_#defs."/$defs/triggers/$defs/conditions", [..._#defs."/$defs/triggers/$defs/conditions"]])
		action!:                               string
		description?:                          string
		min_delay_minutes_between_executions!: number
		target_region!:                        string
	})

	#workflow: close({
		step?: matchN(1, [_#defs."/$defs/workflow/$defs/step", [..._#defs."/$defs/workflow/$defs/step"]])
		workflow_description?:   string
		workflow_target_action!: string
		workflow_target_region?: string
	})

	_#defs: "/$defs/triggers/$defs/conditions": close({
		associated_alarm_name!: string
		condition!:             string
	})

	_#defs: "/$defs/workflow/$defs/step": close({
		arc_routing_control_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/arc_routing_control_config", [..._#defs."/$defs/workflow/$defs/step/$defs/arc_routing_control_config"]])
		custom_action_lambda_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/custom_action_lambda_config", [..._#defs."/$defs/workflow/$defs/step/$defs/custom_action_lambda_config"]])
		description?:          string
		execution_block_type!: string
		name!:                 string
		document_db_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/document_db_config", [..._#defs."/$defs/workflow/$defs/step/$defs/document_db_config"]])
		ec2_asg_capacity_increase_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/ec2_asg_capacity_increase_config", [..._#defs."/$defs/workflow/$defs/step/$defs/ec2_asg_capacity_increase_config"]])
		ecs_capacity_increase_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/ecs_capacity_increase_config", [..._#defs."/$defs/workflow/$defs/step/$defs/ecs_capacity_increase_config"]])
		eks_resource_scaling_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config", [..._#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config"]])
		execution_approval_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/execution_approval_config", [..._#defs."/$defs/workflow/$defs/step/$defs/execution_approval_config"]])
		global_aurora_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/global_aurora_config", [..._#defs."/$defs/workflow/$defs/step/$defs/global_aurora_config"]])
		parallel_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config"]])
		region_switch_plan_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/region_switch_plan_config", [..._#defs."/$defs/workflow/$defs/step/$defs/region_switch_plan_config"]])
		route53_health_check_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/route53_health_check_config", [..._#defs."/$defs/workflow/$defs/step/$defs/route53_health_check_config"]])
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/arc_routing_control_config": close({
		region_and_routing_controls?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls", [..._#defs."/$defs/workflow/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls"]])
		cross_account_role?: string
		external_id?:        string
		timeout_minutes?:    number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls": close({
		routing_control?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls/$defs/routing_control", [..._#defs."/$defs/workflow/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls/$defs/routing_control"]])
		region!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls/$defs/routing_control": close({
		routing_control_arn!: string
		state!:               string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/custom_action_lambda_config": close({
		lambda?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/custom_action_lambda_config/$defs/lambda", [..._#defs."/$defs/workflow/$defs/step/$defs/custom_action_lambda_config/$defs/lambda"]])
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/custom_action_lambda_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/custom_action_lambda_config/$defs/ungraceful"]])
		region_to_run!:          string
		retry_interval_minutes!: number
		timeout_minutes?:        number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/custom_action_lambda_config/$defs/lambda": close({
		arn!:                string
		cross_account_role?: string
		external_id?:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/custom_action_lambda_config/$defs/ungraceful": close({
		behavior!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/document_db_config": close({
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/document_db_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/document_db_config/$defs/ungraceful"]])
		behavior!:           string
		cross_account_role?: string
		database_cluster_arns!: [...string]
		external_id?:               string
		global_cluster_identifier!: string
		timeout_minutes?:           number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/document_db_config/$defs/ungraceful": close({
		ungraceful!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/ec2_asg_capacity_increase_config": close({
		asg?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/asg", [..._#defs."/$defs/workflow/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/asg"]])
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/ungraceful"]])
		capacity_monitoring_approach!: string
		target_percent?:               number
		timeout_minutes?:              number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/asg": close({
		arn!:                string
		cross_account_role?: string
		external_id?:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/ungraceful": close({
		minimum_success_percentage!: number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/ecs_capacity_increase_config": close({
		service?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/ecs_capacity_increase_config/$defs/service", [..._#defs."/$defs/workflow/$defs/step/$defs/ecs_capacity_increase_config/$defs/service"]])
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/ecs_capacity_increase_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/ecs_capacity_increase_config/$defs/ungraceful"]])
		capacity_monitoring_approach!: string
		target_percent?:               number
		timeout_minutes?:              number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/ecs_capacity_increase_config/$defs/service": close({
		cluster_arn!:        string
		cross_account_role?: string
		external_id?:        string
		service_arn!:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/ecs_capacity_increase_config/$defs/ungraceful": close({
		minimum_success_percentage!: number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config": close({
		eks_clusters?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/eks_clusters", [..._#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/eks_clusters"]])
		kubernetes_resource_type?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/kubernetes_resource_type", [..._#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/kubernetes_resource_type"]])
		scaling_resources?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources", [..._#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources"]])
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/ungraceful"]])
		capacity_monitoring_approach!: string
		target_percent!:               number
		timeout_minutes?:              number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/eks_clusters": close({
		cluster_arn!:        string
		cross_account_role?: string
		external_id?:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/kubernetes_resource_type": close({
		api_version!: string
		kind!:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources": close({
		resources?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources/$defs/resources", [..._#defs."/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources/$defs/resources"]])
		namespace!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources/$defs/resources": close({
		hpa_name?:      string
		name!:          string
		namespace!:     string
		resource_name!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/eks_resource_scaling_config/$defs/ungraceful": close({
		minimum_success_percentage!: number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/execution_approval_config": close({
		approval_role!:   string
		timeout_minutes?: number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/global_aurora_config": close({
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/global_aurora_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/global_aurora_config/$defs/ungraceful"]])
		behavior!:           string
		cross_account_role?: string
		database_cluster_arns!: [...string]
		external_id?:               string
		global_cluster_identifier!: string
		timeout_minutes?:           number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/global_aurora_config/$defs/ungraceful": close({
		ungraceful!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config": close({
		step?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step"]])
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step": close({
		arc_routing_control_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/arc_routing_control_config", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/arc_routing_control_config"]])
		custom_action_lambda_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/custom_action_lambda_config", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/custom_action_lambda_config"]])
		description?: string
		document_db_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/document_db_config", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/document_db_config"]])
		execution_block_type!: string
		name!:                 string
		ec2_asg_capacity_increase_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ec2_asg_capacity_increase_config", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ec2_asg_capacity_increase_config"]])
		ecs_capacity_increase_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ecs_capacity_increase_config", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ecs_capacity_increase_config"]])
		eks_resource_scaling_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config"]])
		execution_approval_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/execution_approval_config", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/execution_approval_config"]])
		global_aurora_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/global_aurora_config", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/global_aurora_config"]])
		region_switch_plan_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/region_switch_plan_config", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/region_switch_plan_config"]])
		route53_health_check_config?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/route53_health_check_config", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/route53_health_check_config"]])
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/arc_routing_control_config": close({
		region_and_routing_controls?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls"]])
		cross_account_role?: string
		external_id?:        string
		timeout_minutes?:    number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls": close({
		routing_control?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls/$defs/routing_control", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls/$defs/routing_control"]])
		region!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/arc_routing_control_config/$defs/region_and_routing_controls/$defs/routing_control": close({
		routing_control_arn!: string
		state!:               string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/custom_action_lambda_config": close({
		lambda?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/custom_action_lambda_config/$defs/lambda", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/custom_action_lambda_config/$defs/lambda"]])
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/custom_action_lambda_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/custom_action_lambda_config/$defs/ungraceful"]])
		region_to_run!:          string
		retry_interval_minutes!: number
		timeout_minutes?:        number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/custom_action_lambda_config/$defs/lambda": close({
		arn!:                string
		cross_account_role?: string
		external_id?:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/custom_action_lambda_config/$defs/ungraceful": close({
		behavior!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/document_db_config": close({
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/document_db_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/document_db_config/$defs/ungraceful"]])
		behavior!:           string
		cross_account_role?: string
		database_cluster_arns!: [...string]
		external_id?:               string
		global_cluster_identifier!: string
		timeout_minutes?:           number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/document_db_config/$defs/ungraceful": close({
		ungraceful!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ec2_asg_capacity_increase_config": close({
		asg?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/asg", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/asg"]])
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/ungraceful"]])
		capacity_monitoring_approach!: string
		target_percent?:               number
		timeout_minutes?:              number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/asg": close({
		arn!:                string
		cross_account_role?: string
		external_id?:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ec2_asg_capacity_increase_config/$defs/ungraceful": close({
		minimum_success_percentage!: number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ecs_capacity_increase_config": close({
		service?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ecs_capacity_increase_config/$defs/service", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ecs_capacity_increase_config/$defs/service"]])
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ecs_capacity_increase_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ecs_capacity_increase_config/$defs/ungraceful"]])
		capacity_monitoring_approach!: string
		target_percent?:               number
		timeout_minutes?:              number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ecs_capacity_increase_config/$defs/service": close({
		cluster_arn!:        string
		cross_account_role?: string
		external_id?:        string
		service_arn!:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/ecs_capacity_increase_config/$defs/ungraceful": close({
		minimum_success_percentage!: number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config": close({
		eks_clusters?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/eks_clusters", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/eks_clusters"]])
		kubernetes_resource_type?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/kubernetes_resource_type", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/kubernetes_resource_type"]])
		scaling_resources?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources"]])
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/ungraceful"]])
		capacity_monitoring_approach!: string
		target_percent!:               number
		timeout_minutes?:              number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/eks_clusters": close({
		cluster_arn!:        string
		cross_account_role?: string
		external_id?:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/kubernetes_resource_type": close({
		api_version!: string
		kind!:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources": close({
		resources?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources/$defs/resources", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources/$defs/resources"]])
		namespace!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/scaling_resources/$defs/resources": close({
		hpa_name?:      string
		name!:          string
		namespace!:     string
		resource_name!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/eks_resource_scaling_config/$defs/ungraceful": close({
		minimum_success_percentage!: number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/execution_approval_config": close({
		approval_role!:   string
		timeout_minutes?: number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/global_aurora_config": close({
		ungraceful?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/global_aurora_config/$defs/ungraceful", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/global_aurora_config/$defs/ungraceful"]])
		behavior!:           string
		cross_account_role?: string
		database_cluster_arns!: [...string]
		external_id?:               string
		global_cluster_identifier!: string
		timeout_minutes?:           number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/global_aurora_config/$defs/ungraceful": close({
		ungraceful!: string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/region_switch_plan_config": close({
		arn!:                string
		cross_account_role?: string
		external_id?:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/route53_health_check_config": close({
		record_set?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/route53_health_check_config/$defs/record_set", [..._#defs."/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/route53_health_check_config/$defs/record_set"]])
		cross_account_role?: string
		external_id?:        string
		hosted_zone_id!:     string
		record_name!:        string
		timeout_minutes?:    number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/parallel_config/$defs/step/$defs/route53_health_check_config/$defs/record_set": close({
		record_set_identifier!: string
		region!:                string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/region_switch_plan_config": close({
		arn!:                string
		cross_account_role?: string
		external_id?:        string
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/route53_health_check_config": close({
		record_set?: matchN(1, [_#defs."/$defs/workflow/$defs/step/$defs/route53_health_check_config/$defs/record_set", [..._#defs."/$defs/workflow/$defs/step/$defs/route53_health_check_config/$defs/record_set"]])
		cross_account_role?: string
		external_id?:        string
		hosted_zone_id!:     string
		record_name!:        string
		timeout_minutes?:    number
	})

	_#defs: "/$defs/workflow/$defs/step/$defs/route53_health_check_config/$defs/record_set": close({
		record_set_identifier!: string
		region!:                string
	})
}
