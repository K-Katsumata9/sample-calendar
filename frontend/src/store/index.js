import { createStore } from 'vuex';
import events from './modules/events.js';

const store = createStore({
  modules: {
    events
  }
});

export default store
