# nodeinfo-pac - a Pipeline-as-Code example

**1. Fork this repo to get access to the webhook settings**

**2. Add a webhook**

Git repo > Setting > Webhooks > Add Webhook

Payload URL depennds on your cluster:

* The [DevSandbox](https://developers.redhat.com/developer-sandbox) webhook URL depends on user partitioning, my is:

  > https://pipelines-as-code-controller-tekton-pipelines.apps.sandbox-m2.ll9k.p1.openshiftapps.com

  TODO: Cluster bot URL looks similar to this:

  > TODO

  TODO: With a local cluster (OpenShift local / CRC) you can use [ngrok](https://ngrok.com/) for port forwarding:

  > `ngrok http --host-header pipelines-as-code-controller-openshift-pipelines.apps-crc.testing $(crc ip):443`

* Content type: `application/json`
* SSL works fine with DevSandbox and ngrok (to test with a local cluster), but must be disabled for shared clusters or cluster bot instances

* Change events if needed, but push is fine

**3. Copy and update a `.tekton` `PipelineRun` based on your needs**

Currently this repo contains `PipelineRuns` to:

* build and rollout a `nodeinfo-pac` `Deployment` in the namespaces `christoph` and `cjerolim`

**_Please notice_**: All `PipelineRun` will be started at the moment all all unrelated jobs will fail.

This might be fixed with Pipelines 1.9.1, checkout [PaC PR #1127](https://github.com/openshift-pipelines/pipelines-as-code/pull/1127) for the status.

TODOs:

* [ ] TODO: Yaml to setup the Deployment/ImageStream/Service/Route
* [ ] TODO: similar PR for a DeploymentConfig
* [ ] similar PR for a Knative Service

**4. Push to your Git repo and enjoy your new PipelineRun**
