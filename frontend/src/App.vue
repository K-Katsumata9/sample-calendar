<template>
  <v-app>
    <v-main>
      <BasicCalendar />
    </v-main>
  </v-app>
</template>

<script>
import BasicCalendar from './components/pages/BasicCalendar';

export default {
  name: 'App',
  components: {
    BasicCalendar
  }
};
</script>
