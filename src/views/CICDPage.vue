<template>
  <div>
    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      <h1 class="display-5">CI/CD & Monitoring</h1>
      <p class="lead"></p>
    </div>
    <div class="container">
      <div class="col-lg-12">
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-2"><h3>CI / CD flow</h3></div>
            <div class="col-sm-10 text-center">
              <img src="../assets/jenkins-argocd.png" usemap="#jenkins-argocd"/>
              <map name="jenkins-argocd">
                <area shape="rect" coords="125,0,180,100" alt="Bitbucket" target="_blank" href="https://bitbucket.org/argear/mirrortown.poi/admin/webhooks">
                <area shape="rect" coords="260,0,330,100" alt="Jenkins" target="_blank" href="https://jenkins.default.topzone-k8s.argear.io/view/mtown/job/mirrortown.poi/job/develop/">
                <area shape="rect" coords="430,0,500,100" alt="ECR" target="_blank" href="https://ap-northeast-2.console.aws.amazon.com/ecr/repositories/private/xxxxxxxxxxxx/mtown-mirrortown-poi?region=ap-northeast-2">
                <area shape="rect" coords="510,0,590,100" alt="Vault" target="_blank" href="https://vault.default.topzone-k8s.argear.io/ui/vault/secrets/secret/show/mtown-dev/mirrortown.poi">
                <area shape="rect" coords="260,145,330,250" alt="Bitbucket" target="_blank" href="https://bitbucket.org/argear/tz-argocd-repo/src/main/mtown-mirrortown-poi/develop/">
                <area shape="rect" coords="430,145,500,250" alt="ArgoCD" target="_blank" href="https://argocd.default.topzone-k8s.argear.io/applications?search=poi&view=tiles&showFavorites=false&proj=mtown-dev&sync=&autoSync=&health=&namespace=&cluster=&labels=">
                <area shape="rect" coords="620,145,700,250" alt="EKS" target="_blank" href="https://grafana.default.topzone-k8s.argear.io/d/6581e46e4e5c7ba40a07646395ef7b23/kubernetes-compute-resources-pod?orgId=1&refresh=10s&var-datasource=default&var-cluster=&var-namespace=mtown-dev&var-pod=mtown-mirrortown-poi-develop-79c44598b9-7j9rj">
              </map>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-2"><h3>Log / Monitor</h3></div>
            <div class="col-sm-10 text-center">
              <img src="../assets/prometheus-grafana.png" usemap="#prometheus-grafana"/>
              <map name="prometheus-grafana">
                <area shape="rect" coords="5,30,70,100" alt="EKS" target="_blank" href="https://grafana.default.topzone-k8s.argear.io/explore?orgId=1&left=%7B%22datasource%22:%22P8E80F9AEF21F6940%22,%22queries%22:%5B%7B%22refId%22:%22A%22,%22datasource%22:%7B%22type%22:%22loki%22,%22uid%22:%22P8E80F9AEF21F6940%22%7D,%22editorMode%22:%22builder%22,%22expr%22:%22%7Bapp%3D%5C%22mtown-mirrortown-poi-develop%5C%22%7D%20%7C%3D%20%60%60%22,%22queryType%22:%22range%22%7D%5D,%22range%22:%7B%22from%22:%22now-1h%22,%22to%22:%22now%22%7D%7D">
                <area shape="rect" coords="155,30,220,100" alt="Prometheus" target="_blank" href="https://prometheus.default.topzone-k8s.argear.io/targets?search=mtown">
                <area shape="rect" coords="300,30,360,100" alt="AlertManager" target="_blank" href="https://alertmanager.default.topzone-k8s.argear.io">
                <area shape="rect" coords="155,160,220,230" alt="Grafana" target="_blank" href="https://grafana.default.topzone-k8s.argear.io/dashboards">
              </map>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-2"><h3>ELK / metric</h3></div>
            <div class="col-sm-10 text-center">
              <img src="../assets/elk.png" usemap="#elk"/>
              <map name="elk">
                <area shape="rect" coords="5,12,75,90" alt="EKS" target="_blank" href="https://grafana.default.topzone-k8s.argear.io/explore?orgId=1&left=%7B%22datasource%22:%22P8E80F9AEF21F6940%22,%22queries%22:%5B%7B%22refId%22:%22A%22,%22datasource%22:%7B%22type%22:%22loki%22,%22uid%22:%22P8E80F9AEF21F6940%22%7D,%22editorMode%22:%22builder%22,%22expr%22:%22%7Bapp%3D%5C%22mtown-mirrortown-poi-develop%5C%22%7D%20%7C%3D%20%60%60%22,%22queryType%22:%22range%22%7D%5D,%22range%22:%7B%22from%22:%22now-1h%22,%22to%22:%22now%22%7D%7D">
                <area shape="rect" coords="350,9,420,87" alt="filebeat-1" target="_blank" href="https://grafana.default.topzone-k8s.argear.io/explore?orgId=1&left=%7B%22datasource%22:%22P8E80F9AEF21F6940%22,%22queries%22:%5B%7B%22refId%22:%22A%22,%22datasource%22:%7B%22type%22:%22loki%22,%22uid%22:%22P8E80F9AEF21F6940%22%7D,%22editorMode%22:%22builder%22,%22expr%22:%22%7Bapp%3D%5C%22filebeat-filebeat%5C%22%7D%20%7C%3D%20%60%60%22,%22queryType%22:%22range%22%7D%5D,%22range%22:%7B%22from%22:%22now-1h%22,%22to%22:%22now%22%7D%7D">
                <area shape="rect" coords="6,114,76,192" alt="ALB" target="_blank" href="https://ap-northeast-2.console.aws.amazon.com/ec2/home?region=ap-northeast-2#LoadBalancers:search=k8s-hypen-hypenhyp-947ca19836-1977768723.ap-northeast-2.elb.amazonaws.com;sort=loadBalancerName">
                <area shape="rect" coords="115,101,185,179" alt="S3-1" target="_blank" href="https://s3.console.aws.amazon.com/s3/buckets/alb-external-ingress-access-bucket-topzone-k8s?region=ap-northeast-2&tab=properties">
                <area shape="rect" coords="155,160,220,230" alt="SNS" target="_blank" href="https://ap-northeast-2.console.aws.amazon.com/sqs/v2/home?region=ap-northeast-2#/queues/https%3A%2F%2Fsqs.ap-northeast-2.amazonaws.com%2Fxxxxxxxxxxxx%2Falb-external-ingress-access-bucket-event-queue">
                <area shape="rect" coords="348,147,418,225" alt="filebeat-2" target="_blank" href="https://grafana.default.topzone-k8s.argear.io/explore?orgId=1&left=%7B%22datasource%22:%22P8E80F9AEF21F6940%22,%22queries%22:%5B%7B%22refId%22:%22A%22,%22datasource%22:%7B%22type%22:%22loki%22,%22uid%22:%22P8E80F9AEF21F6940%22%7D,%22editorMode%22:%22builder%22,%22expr%22:%22%7Bapp%3D%5C%22alb-external-ingress%5C%22%7D%20%7C%3D%20%60%60%22,%22queryType%22:%22range%22%7D%5D,%22range%22:%7B%22from%22:%22now-1h%22,%22to%22:%22now%22%7D%7D">
                <area shape="rect" coords="231,152,301,230" alt="SNS" target="_blank" href="https://ap-northeast-2.console.aws.amazon.com/sqs/v2/home?region=ap-northeast-2#/queues/https%3A%2F%2Fsqs.ap-northeast-2.amazonaws.com%2Fxxxxxxxxxxxx%2Falb-external-ingress-access-bucket-event-queue">
                <area shape="rect" coords="454,6,524,84" alt="logstash" target="_blank" href="https://logstash.elk.topzone-k8s.argear.io/">
                <area shape="rect" coords="565,9,635,87" alt="elasticsearch" target="_blank" href="https://es.elk.topzone-k8s.argear.io/">
                <area shape="rect" coords="718,9,788,87" alt="kibana" target="_blank" href="https://kibana.elk.topzone-k8s.argear.io/app/dashboards#/view/68d966d0-6347-11ee-bce1-9fbc05d24d84?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-15m,to:now))&_a=(description:alb_dashboard_d0,filters:!(('$state':(store:appState),meta:(alias:!n,disabled:!f,index:'898b0570-5db4-11ee-bce1-9fbc05d24d84',key:client.address.keyword,negate:!t,params:(query:'43.201.181.72'),type:phrase),query:(match_phrase:(client.address.keyword:'43.201.181.72'))),('$state':(store:appState),meta:(alias:!n,disabled:!f,index:'898b0570-5db4-11ee-bce1-9fbc05d24d84',key:client.address.keyword,negate:!t,params:(query:'121.138.194.226'),type:phrase),query:(match_phrase:(client.address.keyword:'121.138.194.226'))),('$state':(store:appState),meta:(alias:!n,disabled:!f,index:'898b0570-5db4-11ee-bce1-9fbc05d24d84',key:client.address.keyword,negate:!t,params:(query:'39.7.25.235'),type:phrase),query:(match_phrase:(client.address.keyword:'39.7.25.235')))),fullScreenMode:!f,options:(hidePanelTitles:!f,useMargins:!t),query:(language:kuery,query:''),tags:!(),timeRestore:!f,title:alb_dashboard_d0,viewMode:view)">
                <area shape="rect" coords="7,209,77,287" alt="cloudfront" target="_blank" href="https://us-east-1.console.aws.amazon.com/cloudfront/v4/home?region=ap-northeast-2#/distributions/E3LZMG78XNBVP4/edit">
                <area shape="rect" coords="115,203,185,281" alt="S3-2" target="_blank" href="https://s3.console.aws.amazon.com/s3/buckets/cloudfront-bucket-topzone-k8s?region=ap-northeast-2&tab=properties">
              </map>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

import $ from 'jquery';

export default {
  name: 'CICDPage',
  components: {},
  data: function () {
    return {
      id: 'cicd',
    }
  },
  props: [],
  mounted() {
    $('.loading').hide();
    $('.cluster-link').click(function (e) {
      let url = $(e.currentTarget).attr('href');
      url = url.replaceAll('tz-xxxxxxxxxxxx', $('#aws-account').val());
      window.open(url, "_blank");
    });
  },
  methods: {
  }
};
</script>