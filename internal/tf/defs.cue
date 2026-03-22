// Package tf profides a schema for the output of
//		terraform providers schema -json
// DEPRECATED: Use the root cuetf module instead.
package tf

import "github.com/roman-mazur/cuetf"

#ProviderSchema: cuetf.#ProviderSchema

#type: cuetf.#type

documented: cuetf.documented

#attr: cuetf.#attr

#block: cuetf.#block

#attributeDescription: cuetf.#attributeDescription

#blockTypeDescription: cuetf.#blockTypeDescription

nestable: cuetf.nestable
