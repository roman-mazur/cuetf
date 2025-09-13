package res

import "list"

#google_binary_authorization_attestor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_binary_authorization_attestor")
	close({
		// A descriptive comment. This field may be updated. The field may
		// be
		// displayed in chooser dialogs.
		description?: string

		// The resource name.
		name!: string
		id?:   string
		attestation_authority_note?: matchN(1, [#attestation_authority_note, list.MaxItems(1) & [_, ...] & [...#attestation_authority_note]])
		timeouts?: #timeouts
		project?:  string
	})

	#attestation_authority_note: close({
		public_keys?: matchN(1, [_#defs."/$defs/attestation_authority_note/$defs/public_keys", [..._#defs."/$defs/attestation_authority_note/$defs/public_keys"]])

		// This field will contain the service account email address that
		// this Attestor will use as the principal when querying Container
		// Analysis. Attestor administrators must grant this service
		// account
		// the IAM role needed to read attestations from the noteReference
		// in
		// Container Analysis
		// (containeranalysis.notes.occurrences.viewer).
		// This email address is fixed for the lifetime of the Attestor,
		// but
		// callers should not make any other assumptions about the service
		// account email; future versions may use an email based on a
		// different naming pattern.
		delegation_service_account_email?: string

		// The resource name of a ATTESTATION_AUTHORITY Note, created by
		// the
		// user. If the Note is in a different project from the Attestor,
		// it
		// should be specified in the format 'projects/*/notes/*' (or the
		// legacy
		// 'providers/*/notes/*'). This field may not be updated.
		// An attestation by this attestor is stored as a Container
		// Analysis
		// ATTESTATION_AUTHORITY Occurrence that names a container image
		// and that links to this Note.
		note_reference!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/attestation_authority_note/$defs/public_keys": close({
		// ASCII-armored representation of a PGP public key, as the
		// entire output by the command
		// 'gpg --export --armor foo@example.com' (either LF or CRLF
		// line endings). When using this field, id should be left
		// blank. The BinAuthz API handlers will calculate the ID
		// and fill it in automatically. BinAuthz computes this ID
		// as the OpenPGP RFC4880 V4 fingerprint, represented as
		// upper-case hex. If id is provided by the caller, it will
		// be overwritten by the API-calculated ID.
		ascii_armored_pgp_public_key?: string
		pkix_public_key?: matchN(1, [_#defs."/$defs/attestation_authority_note/$defs/public_keys/$defs/pkix_public_key", list.MaxItems(1) & [..._#defs."/$defs/attestation_authority_note/$defs/public_keys/$defs/pkix_public_key"]])

		// A descriptive comment. This field may be updated.
		comment?: string

		// The ID of this public key. Signatures verified by BinAuthz
		// must include the ID of the public key that can be used to
		// verify them, and that ID must match the contents of this
		// field exactly. Additional restrictions on this field can
		// be imposed based on which public key type is encapsulated.
		// See the documentation on publicKey cases below for details.
		id?: string
	})

	_#defs: "/$defs/attestation_authority_note/$defs/public_keys/$defs/pkix_public_key": close({
		// A PEM-encoded public key, as described in
		// 'https://tools.ietf.org/html/rfc7468#section-13'
		public_key_pem?: string

		// The signature algorithm used to verify a message against
		// a signature using this key. These signature algorithm must
		// match the structure and any object identifiers encoded in
		// publicKeyPem (i.e. this algorithm must match that of the
		// public key).
		signature_algorithm?: string
	})
}
