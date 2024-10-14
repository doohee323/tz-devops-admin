<template>
  <div>
    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      <h1 class="display-5">DevOps Tools </h1>
      <p class="lead"></p>
    </div>
    <div class="container">
      <div class="row col-lg-12 form-group form-inline">
        <div class="col-lg-6 form-group">
          <label for="aws-account" class="col-lg-3 col-form-label">EKS Cluster</label>
          <select class="browser-default custom-select" id="aws-account">
            <option value="tz-xxxxxxxxxxxx" selected>tz-xxxxxxxxxxxx</option>
            <option value="tz-yyyyyyyyyyyy">tz-yyyyyyyyyyyy</option>
          </select>
          <div class="align-left loading">
            <img src="../assets/loading.gif"/>
          </div>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>EKS Monitoring/Logging</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><p class="cluster-link a-link" href="https://grafana.default.topzone-k8s.argear.io"
                       target="_blank">Grafana</p></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>EKS Health Check</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><p class="cluster-link a-link" href="https://prometheus.default.topzone-k8s.argear.io"
                       target="_blank">Prometheus</p></h4>&nbsp;/&nbsp;
                <h4><p class="cluster-link a-link" href="https://alertmanager.default.topzone-k8s.argear.io"
                       target="_blank">Alertmanager</p></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>CD</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><p class="cluster-link a-link" href="https://argocd.default.topzone-k8s.argear.io"
                       target="_blank">Argocd</p></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>Password Management</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><p class="cluster-link a-link" href="https://vault.default.topzone-k8s.argear.io"
                       target="_blank">Vault</p></h4>&nbsp;/&nbsp;
                <h4><p class="cluster-link a-link" href="https://consul.default.topzone-k8s.argear.io"
                       target="_blank">Consul</p></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>MSA Console</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><p class="cluster-link a-link" href="https://kiali.istio-system.topzone-k8s.argear.io"
                       target="_blank">Kiali</p></h4>&nbsp;/&nbsp;
                <h4><p class="cluster-link a-link" href="https://jaeger.istio-system.topzone-k8s.argear.io"
                       target="_blank">Jaeger</p></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <hr>
      </div>
      <div class="col-lg-12">
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>Jira</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><a href="https://argear.atlassian.net/jira/software/projects/BLBW/boards/36" target="_blank">Jira</a></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>Wiki</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><a href="https://argear.atlassian.net/wiki/spaces/INFRAS/pages/561676361/DevOps" target="_blank">Wiki</a></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>Infra</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><a href="https://bitbucket.org/argear/tz-eks-main/src/main" target="_blank">Terraform</a></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>CI</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><a href="https://jenkins.default.topzone-k8s.argear.io/" target="_blank">Jenkins</a></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>Docker Repo</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><p class="cluster-link a-link"
                       href="https://ap-northeast-2.console.aws.amazon.com/ecr/repositories?region=ap-northeast-2"
                       target="_blank">ECR</p></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>Code Analysis</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><a href="https://sonarqube.default.topzone-k8s.argear.io/" target="_blank">SonarQube</a></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>Debugging</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><a href="https://sentry.topzone-k8s.argear.io/" target="_blank">Sentry</a></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>Statistics</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><a href="https://kibana.elk.topzone-k8s.argear.io/" target="_blank">Kibana</a></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>K8S Cost Management</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><a href="https://kubecost.topzone-k8s.argear.io/savings" target="_blank">K8S Cost Management</a></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>Service Monitoring</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><a href="https://kibana.elk.topzone-k8s.argear.io/app/dashboards#/view/c8b62730-7a05-11ee-bce1-9fbc05d24d84?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-12h,to:now))&_a=(description:'',filters:!(),fullScreenMode:!f,options:(hidePanelTitles:!f,useMargins:!t),query:(language:kuery,query:''),tags:!(),timeRestore:!f,title:'Service%20Access%20Stats',viewMode:edit)" target="_blank">Access Control</a></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
        <div class="card card-default">
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3>Project Management</h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><a href="https://bitbucket.org/argear/tz-argocd-repo/src/main/">Argo Repo</a></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
          <div class="card-body form-inline">
            <div class="col-sm-4"><h3></h3></div>
            <div class="col-sm-8">
              <label class="col-sm-12 form-group">
                <h4><a href="https://kibana.elk.topzone-k8s.argear.io/app/dashboards#/view/40ebc970-6918-11ee-bce1-9fbc05d24d84?_g=(filters:!(),query:(language:kuery,query:''),refreshInterval:(pause:!t,value:5000),time:(from:now-20m,to:now))&_a=(description:'',filters:!(),fullScreenMode:!f,options:(hidePanelTitles:!f,useMargins:!t),panels:!((embeddableConfig:(attributes:(references:!((id:eee95c00-5e8b-11ee-bce1-9fbc05d24d84,name:indexpattern-datasource-current-indexpattern,type:index-pattern),(id:eee95c00-5e8b-11ee-bce1-9fbc05d24d84,name:indexpattern-datasource-layer-7dccc4ad-150f-4886-af5c-1e494b51308e,type:index-pattern)),state:(datasourceStates:(indexpattern:(layers:('7dccc4ad-150f-4886-af5c-1e494b51308e':(columnOrder:!('7866086b-1c33-4127-b231-2f7327dc3a3e','5af45bfd-b8cd-496a-9931-9ef477a86191'),columns:('5af45bfd-b8cd-496a-9931-9ef477a86191':(dataType:number,isBucketed:!f,label:'Average%20of%20errorCode',operationType:average,scale:ratio,sourceField:errorCode),'7866086b-1c33-4127-b231-2f7327dc3a3e':(dataType:string,isBucketed:!t,label:'Top%20values%20of%20name.keyword',operationType:terms,params:(missingBucket:!f,orderBy:(columnId:'5af45bfd-b8cd-496a-9931-9ef477a86191',type:column),orderDirection:desc,otherBucket:!t,size:200),scale:ordinal,sourceField:name.keyword)),incompleteColumns:())))),filters:!(),query:(language:kuery,query:''),visualization:(columns:!((columnId:'7866086b-1c33-4127-b231-2f7327dc3a3e',isTransposed:!f),(columnId:'5af45bfd-b8cd-496a-9931-9ef477a86191',isTransposed:!f)),layerId:'7dccc4ad-150f-4886-af5c-1e494b51308e',sorting:(columnId:'5af45bfd-b8cd-496a-9931-9ef477a86191',direction:asc))),title:'',type:lens,visualizationType:lnsDatatable),enhancements:(),hidePanelTitles:!f),gridData:(h:9,i:'8fe31b6d-7af1-4791-b7d0-26e34083ba56',w:22,x:0,y:0),panelIndex:'8fe31b6d-7af1-4791-b7d0-26e34083ba56',title:'Target%20Systems',type:lens,version:'7.13.2'),(embeddableConfig:(attributes:(references:!((id:eee95c00-5e8b-11ee-bce1-9fbc05d24d84,name:indexpattern-datasource-current-indexpattern,type:index-pattern),(id:eee95c00-5e8b-11ee-bce1-9fbc05d24d84,name:indexpattern-datasource-layer-8e810625-93aa-4ad9-99b6-fab73402ce01,type:index-pattern),(id:eee95c00-5e8b-11ee-bce1-9fbc05d24d84,name:filter-index-pattern-0,type:index-pattern)),state:(datasourceStates:(indexpattern:(layers:('8e810625-93aa-4ad9-99b6-fab73402ce01':(columnOrder:!(cf2366bd-770a-4285-b457-a8df0d0f4fd0,'96948445-5b8c-4848-8795-d39d7ed61828',d52a3fb7-06bf-4dbd-95a7-c6fc67429317,'0c118639-0203-44ea-8a70-cedffbe44bad'),columns:('0c118639-0203-44ea-8a70-cedffbe44bad':(dataType:number,isBucketed:!f,label:'Moving%20average%20of%20Last%20value%20of%20errorCode',operationType:moving_average,params:(window:5),references:!(d52a3fb7-06bf-4dbd-95a7-c6fc67429317),scale:ratio),'96948445-5b8c-4848-8795-d39d7ed61828':(dataType:date,isBucketed:!t,label:ts,operationType:date_histogram,params:(interval:'5m'),scale:interval,sourceField:ts),cf2366bd-770a-4285-b457-a8df0d0f4fd0:(dataType:string,isBucketed:!t,label:'Top%20values%20of%20name.keyword',operationType:terms,params:(missingBucket:!f,orderBy:(fallback:!t,type:alphabetical),orderDirection:asc,otherBucket:!f,size:10),scale:ordinal,sourceField:name.keyword),d52a3fb7-06bf-4dbd-95a7-c6fc67429317:(dataType:number,isBucketed:!f,label:'Last%20value%20of%20errorCode',operationType:last_value,params:(sortField:ts),scale:ratio,sourceField:errorCode)),incompleteColumns:())))),filters:!(('$state':(store:appState),meta:(alias:!n,disabled:!f,indexRefName:filter-index-pattern-0,key:errorCode,negate:!f,params:(gte:-1,lt:-0.1),type:range),range:(errorCode:(gte:-1,lt:-0.1)))),query:(language:kuery,query:''),visualization:(axisTitlesVisibilitySettings:(x:!t,yLeft:!t,yRight:!t),fittingFunction:None,gridlinesVisibilitySettings:(x:!t,yLeft:!t,yRight:!t),layers:!((accessors:!('0c118639-0203-44ea-8a70-cedffbe44bad'),layerId:'8e810625-93aa-4ad9-99b6-fab73402ce01',seriesType:line,splitAccessor:cf2366bd-770a-4285-b457-a8df0d0f4fd0,xAccessor:'96948445-5b8c-4848-8795-d39d7ed61828')),legend:(isVisible:!t,position:right),preferredSeriesType:line,tickLabelsVisibilitySettings:(x:!t,yLeft:!t,yRight:!t),valueLabels:hide)),title:'',type:lens,visualizationType:lnsXY),enhancements:(),hidePanelTitles:!f),gridData:(h:9,i:'377f2118-1ab6-4a58-a632-699026e0d610',w:26,x:22,y:0),panelIndex:'377f2118-1ab6-4a58-a632-699026e0d610',title:Error,type:lens,version:'7.13.2'),(embeddableConfig:(attributes:(references:!((id:eee95c00-5e8b-11ee-bce1-9fbc05d24d84,name:indexpattern-datasource-current-indexpattern,type:index-pattern),(id:eee95c00-5e8b-11ee-bce1-9fbc05d24d84,name:indexpattern-datasource-layer-7ea3e1de-d63f-4874-aca6-a656cc9ad81a,type:index-pattern),(id:eee95c00-5e8b-11ee-bce1-9fbc05d24d84,name:filter-index-pattern-0,type:index-pattern)),state:(datasourceStates:(indexpattern:(layers:('7ea3e1de-d63f-4874-aca6-a656cc9ad81a':(columnOrder:!('08a18860-010c-419f-a948-d72616c64a80','3dba3200-c9d8-44bb-bb6f-bb94a8b5b98b','172ab432-088e-46cd-95bd-233f67c52b0e'),columns:('08a18860-010c-419f-a948-d72616c64a80':(dataType:string,isBucketed:!t,label:'Top%20values%20of%20name.keyword',operationType:terms,params:(missingBucket:!f,orderBy:(fallback:!t,type:alphabetical),orderDirection:asc,otherBucket:!f,size:10),scale:ordinal,sourceField:name.keyword),'172ab432-088e-46cd-95bd-233f67c52b0e':(dataType:number,isBucketed:!f,label:'Last%20value%20of%20errorCode',operationType:last_value,params:(sortField:ts),scale:ratio,sourceField:errorCode),'3dba3200-c9d8-44bb-bb6f-bb94a8b5b98b':(dataType:number,isBucketed:!t,label:errorCode,operationType:range,params:(maxBars:auto,ranges:!((from:0,label:'',to:1000)),type:histogram),scale:interval,sourceField:errorCode)),incompleteColumns:())))),filters:!(('$state':(store:appState),meta:(alias:!n,disabled:!f,indexRefName:filter-index-pattern-0,key:errorCode,negate:!f,params:(query:-1),type:phrase),query:(match_phrase:(errorCode:-1)))),query:(language:kuery,query:''),visualization:(axisTitlesVisibilitySettings:(x:!t,yLeft:!t,yRight:!t),fittingFunction:None,gridlinesVisibilitySettings:(x:!t,yLeft:!t,yRight:!t),layers:!((accessors:!('172ab432-088e-46cd-95bd-233f67c52b0e'),layerId:'7ea3e1de-d63f-4874-aca6-a656cc9ad81a',palette:(name:negative,type:palette),seriesType:bar,splitAccessor:'3dba3200-c9d8-44bb-bb6f-bb94a8b5b98b',xAccessor:'08a18860-010c-419f-a948-d72616c64a80')),legend:(isVisible:!t,position:right),preferredSeriesType:bar,tickLabelsVisibilitySettings:(x:!t,yLeft:!t,yRight:!t),valueLabels:hide)),title:'',type:lens,visualizationType:lnsXY),enhancements:(),hidePanelTitles:!f),gridData:(h:6,i:'8b37ea05-816b-4db3-9a16-f04234c7f344',w:48,x:0,y:9),panelIndex:'8b37ea05-816b-4db3-9a16-f04234c7f344',title:'errorCode%20%3D%3D%20-1',type:lens,version:'7.13.2'),(embeddableConfig:(attributes:(references:!((id:eee95c00-5e8b-11ee-bce1-9fbc05d24d84,name:indexpattern-datasource-current-indexpattern,type:index-pattern),(id:eee95c00-5e8b-11ee-bce1-9fbc05d24d84,name:indexpattern-datasource-layer-7ea3e1de-d63f-4874-aca6-a656cc9ad81a,type:index-pattern),(id:eee95c00-5e8b-11ee-bce1-9fbc05d24d84,name:filter-index-pattern-0,type:index-pattern)),state:(datasourceStates:(indexpattern:(layers:('7ea3e1de-d63f-4874-aca6-a656cc9ad81a':(columnOrder:!('08a18860-010c-419f-a948-d72616c64a80','172ab432-088e-46cd-95bd-233f67c52b0e'),columns:('08a18860-010c-419f-a948-d72616c64a80':(dataType:string,isBucketed:!t,label:'Top%20values%20of%20name.keyword',operationType:terms,params:(missingBucket:!f,orderBy:(columnId:'172ab432-088e-46cd-95bd-233f67c52b0e',type:column),orderDirection:desc,otherBucket:!f,size:10),scale:ordinal,sourceField:name.keyword),'172ab432-088e-46cd-95bd-233f67c52b0e':(dataType:number,isBucketed:!f,label:'Count%20of%20records',operationType:count,scale:ratio,sourceField:Records)),incompleteColumns:())))),filters:!(('$state':(store:appState),meta:(alias:!n,disabled:!f,indexRefName:filter-index-pattern-0,key:errorCode,negate:!f,params:(query:0),type:phrase),query:(match_phrase:(errorCode:0)))),query:(language:kuery,query:''),visualization:(axisTitlesVisibilitySettings:(x:!t,yLeft:!t,yRight:!t),fittingFunction:None,gridlinesVisibilitySettings:(x:!t,yLeft:!t,yRight:!t),layers:!((accessors:!('172ab432-088e-46cd-95bd-233f67c52b0e'),layerId:'7ea3e1de-d63f-4874-aca6-a656cc9ad81a',seriesType:bar,xAccessor:'08a18860-010c-419f-a948-d72616c64a80')),legend:(isVisible:!t,position:right),preferredSeriesType:bar,tickLabelsVisibilitySettings:(x:!t,yLeft:!t,yRight:!t),valueLabels:hide)),title:'',type:lens,visualizationType:lnsXY),enhancements:(),hidePanelTitles:!f),gridData:(h:7,i:'30b9bee7-8889-41a7-9423-efc08d8f9178',w:48,x:0,y:15),panelIndex:'30b9bee7-8889-41a7-9423-efc08d8f9178',title:'errorCode%20%3D%3D%20-1',type:lens,version:'7.13.2')),query:(language:kuery,query:''),tags:!(),timeRestore:!f,title:mcall,viewMode:view)">Uptime</a></h4>
              </label><h5 class="text-center"></h5>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

import $ from 'jquery';
// import * as Sentry from '@sentry/vue';

export default {
  name: 'MainPage',
  components: {},
  data: function () {
    return {
      id: 'main',
    }
  },
  props: [],
  mounted() {
    // try {
    //     Sentry.captureException('Something went wrong!!: ');
    // } catch (e) {
    //     // eslint-disable-next-line no-debugger
    //     debugger;
    // }
    $('.loading').hide();
    $('.cluster-link').click(function (e) {
      let url = $(e.currentTarget).attr('href');
      url = url.replaceAll('tz-xxxxxxxxxxxx', $('#aws-account').val());
// eslint-disable-next-line no-debugger
debugger;
      window.open(url, "_blank");
    });
  },
  methods: {
  }
};
</script>