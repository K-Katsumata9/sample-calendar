<template>
  <div>
    <v-sheet height="600">
      <v-calendar
        ref="calendar"
        v-model="value"
        :events="events"
        @change="fetchEvents()"
      ></v-calendar>
      <v-btn type="submit" @click="fetchEvents()">fetchEvents</v-btn>
    </v-sheet>
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'

export default {
  name: 'BasicCalendar',
  data: () => ({
      value: [new Date()],
  }),
  computed: {
    ...mapGetters('events', ['events']),
  },
  methods: {
    ...mapActions('events', ['fetchEvents'])  
  },
  mounted() {
    // コンポーネントがマウントされたら初回のデータ取得を行う
    this.fetchEvents();
    // 1秒ごとにデータを更新する
    this.interval = setInterval(this.fetchEvents, 1000); // 1秒ごとに更新
  },
  beforeUnmount() {
    // コンポーネントが破棄されるときにインターバルをクリアする
    clearInterval(this.interval);
  },
}
</script>
