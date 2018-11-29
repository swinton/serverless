# serverless

An example how to use [the serverless framework](https://serverless.com/) with [GitHub Actions](https://github.com/features/actions).


The workflow first [deploys](https://github.com/swinton/serverless/blob/ce19d344add7022072ce36f8514314f513957a5e/.github/main.workflow#L6-L10) and then [invokes](https://github.com/swinton/serverless/blob/ce19d344add7022072ce36f8514314f513957a5e/.github/main.workflow#L12-L17) the [serverless function](https://github.com/swinton/serverless/blob/ce19d344add7022072ce36f8514314f513957a5e/handler.js#L3-L10) using [AWS Lambda](https://github.com/swinton/serverless/blob/ce19d344add7022072ce36f8514314f513957a5e/serverless.yml#L14).
