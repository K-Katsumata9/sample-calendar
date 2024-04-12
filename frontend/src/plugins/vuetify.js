// Styles
import '@mdi/font/css/materialdesignicons.css'
import 'vuetify/styles'


// Vuetify
import { createVuetify } from 'vuetify'
import * as components from 'vuetify/components'
import * as directives from 'vuetify/directives'
import * as labsComponents from 'vuetify/labs/components'
import { VCalendar } from 'vuetify/labs/VCalendar'

const vuetify = createVuetify({
  // https://vuetifyjs.com/en/introduction/why-vuetify/#feature-guides
  components: {
    VCalendar,
    components,
    directives,
    labsComponents,
  },
})
export default vuetify

