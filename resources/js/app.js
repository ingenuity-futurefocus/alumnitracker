require('./bootstrap');

// Import modules...
import Vue from 'vue';
import { App as InertiaApp, plugin as InertiaPlugin } from '@inertiajs/inertia-vue';
import PortalVue from 'portal-vue';
import AppLayout from '@/Layouts/AppLayout';


Vue.mixin({ methods: { route } });
Vue.use(InertiaPlugin);
Vue.use(PortalVue);

const app = document.getElementById('app');

new Vue({
    render: (h) =>
        h(InertiaApp, {
            props: {
                initialPage: JSON.parse(app.dataset.page),
                resolveComponent: (name) =>
                    import (`./Pages/${name}`).then(({ default: page }) => {
                        page.layout = AppLayout
                        return page
                    }),
            },
        }),
}).$mount(app);

// import RoseJacLayout from '@/Layouts/RoseJacLayout';

// Vue.mixin({ methods: { route } });
// Vue.use(InertiaPlugin);
// Vue.use(PortalVue);

// const app = document.getElementById('app');

// new Vue({
//     render: (h) =>
//         h(InertiaApp, {
//             props: {
//                 initialPage: JSON.parse(app.dataset.page),
//                 resolveComponent: (name) =>
//                     import (`./Pages/${name}`).then(({ default: page }) => {
//                         page.layout = RoseJacLayout
//                         return page
//                     }),
//             },
//         }),
// }).$mount(app);