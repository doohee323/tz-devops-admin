import Vue from 'vue';
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue';
import App from './App.vue';
import router from './router'
import * as Sentry from "@sentry/vue";

import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue/dist/bootstrap-vue.css';
import './assets/devops.css';

Vue.use(BootstrapVue);
Vue.use(IconsPlugin);

Vue.config.productionTip = false;

try {
  Sentry.init({
    Vue: Vue,
    dsn: "process.env.SENTRY_DSN",
    beforeSend(event, hint) {
      if (event.exception && event.event_id) {
        Sentry.showReportDialog({ eventId: event.event_id });
      }
      console.debug('beforeSend hint: ' + hint);
      return event;
    },
    integrations: [
      Sentry.browserTracingIntegration(),
      Sentry.replayIntegration({
        maskAllText: true,
        blockAllMedia: true,
      }),
    ],
    tracesSampleRate: 1.0, //  Capture 100% of the transactions, Performance Monitoring
    replaysSessionSampleRate: 1.0, // This sets the sample rate at 10%. You may want to change it to 100% while in development and then sample at a lower rate in production.
    replaysOnErrorSampleRate: 1.0, // If you're not already sampling the entire session, change the sample rate to 100% when sampling sessions where errors occur.
    environment: "process.env.SENTRY_ENVIRONMENT",
    release: "process.env.SENTRY_RELEASE",
  });
} catch (e) {
  // eslint-disable-next-line no-debugger
  debugger;
}

Vue.config.errorHandler = (err, vm, info) => {
  console.error(err, info);
};

new Vue({
  router,
  render: h => h(App),
}).$mount('#app');

