<template>
  <div>
    <h1>Calendar</h1>
    <ul>
      <li v-for="event in events" :key="event.id">
        {{ event.name }}
      </li>
    </ul>
    <button type="submit" @click="fetchEvents">fetchEvents</button>

    <CalendarDetails />
  </div>
</template>

<script>
import CalendarDetails from "./CalendarDetails.vue"
import { mapActions, mapGetters } from 'vuex'

export default {
  name: 'BasicCalendar',
  components: {
    CalendarDetails
  },
  computed: {
    ...mapGetters('events', ['events']),
  },
  methods: {
    ...mapActions('events', ['fetchEvents'])  
  },
}
</script>
