package res

import "list"

#google_container_analysis_occurrence: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_container_analysis_occurrence")
	close({
		// The time when the repository was created.
		create_time?: string
		id?:          string

		// The note kind which explicitly denotes which of the occurrence
		// details are specified. This field can be used as a filter in
		// list
		// requests.
		kind?: string

		// The name of the occurrence.
		name?: string

		// The analysis note associated with this occurrence, in the form
		// of
		// projects/[PROJECT]/notes/[NOTE_ID]. This field can be used as a
		// filter in list requests.
		note_name!: string
		project?:   string

		// A description of actions that can be taken to remedy the note.
		remediation?: string

		// Required. Immutable. A URI that represents the resource for
		// which
		// the occurrence applies. For example,
		// https://gcr.io/project/image@sha256:123abc for a Docker image.
		resource_uri!: string
		attestation?: matchN(1, [#attestation, list.MaxItems(1) & [_, ...] & [...#attestation]])
		timeouts?: #timeouts

		// The time when the repository was last updated.
		update_time?: string
	})

	#attestation: close({
		signatures?: matchN(1, [_#defs."/$defs/attestation/$defs/signatures", [_, ...] & [..._#defs."/$defs/attestation/$defs/signatures"]])

		// The serialized payload that is verified by one or
		// more signatures. A base64-encoded string.
		serialized_payload!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/attestation/$defs/signatures": close({
		// The identifier for the public key that verifies this
		// signature. MUST be an RFC3986 conformant
		// URI. * When possible, the key id should be an
		// immutable reference, such as a cryptographic digest.
		// Examples of valid values:
		//
		// * OpenPGP V4 public key fingerprint. See
		// https://www.iana.org/assignments/uri-schemes/prov/openpgp4fpr
		// for more details on this scheme.
		// * 'openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA'
		// * RFC6920 digest-named SubjectPublicKeyInfo (digest of the DER
		// serialization):
		// * "ni:///sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU"
		public_key_id!: string

		// The content of the signature, an opaque bytestring.
		// The payload that this signature verifies MUST be
		// unambiguously provided with the Signature during
		// verification. A wrapper message might provide the
		// payload explicitly. Alternatively, a message might
		// have a canonical serialization that can always be
		// unambiguously computed to derive the payload.
		signature?: string
	})
}
