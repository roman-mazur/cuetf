package schema

import "github.com/roman-mazur/cuetf"

// Ensure that the obtained Terraform schema matches the definitions we use to make transforms.
cuetf.#ProviderSchemaFile
provider_schemas: "registry.terraform.io/scaleway/scaleway": cuetf.#ProviderSchema
