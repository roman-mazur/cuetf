package schema

import "github.com/roman-mazur/cuetf/internal/tf"

// Ensure that the obtained Terraform schema matches the definitions we use to make transforms.
provider_schemas: "registry.terraform.io/hashicorp/google": tf.#ProviderSchema
