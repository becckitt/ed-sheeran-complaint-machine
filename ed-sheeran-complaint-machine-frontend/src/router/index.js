import Vue from 'vue'
import Router from 'vue-router'
import ComplaintMachine from '@/components/views/ComplaintMachine'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Ed Sheeran Complaint Machine',
      component: ComplaintMachine
    }
  ]
})
