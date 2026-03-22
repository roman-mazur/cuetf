package ci

// Generate a new tag and publish a new CUE module on a monthly basis running the monhtly-release command.
workflows: autorelease: {
	on: {
		// 1. Scheduled: Runs on the 20th day of every month
		schedule: [{cron: "0 10 20 * *"}]

		// 2. Manual: Enables the "Run workflow" button in the GitHub UI
		workflow_dispatch: {}
	}

	jobs: release: {
		permissions: {
			"id-token": "write"
			contents:   "write"
		}
		steps: [
			#steps.#checkout & {#prepareForGitUse: true},
			#steps.#installGo,
			#steps.#installCue,

			{name: "Login to CUE Registry", uses: "cue-labs/registry-login-action@v1"},

			{
				name: "Execute"
				run:  """
					\(_scriptPrepareForGitPush)
					go run ./internal/cmd/monthly-release
					"""
			},
		]
	}
}
