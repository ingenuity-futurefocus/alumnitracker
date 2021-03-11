<template>

<div class="results">

    <p>Showing Alumnus with Overdue Checkins</p>

    <div v-if="people.length > 0" class="cardWrap">
        <div v-for="person in people">
            <inertia-link class="card" :href="`/alumnus/details/${person['person'].id}`">
                <p class="font-bold">{{person['person'].first_name}} {{person['person'].last_name}}</p>
                <p>{{person['organization'].name}}</p>
                <p>Last Check In: {{person['severence'].occured}}</p>
            </inertia-link>
        </div>
    </div>
    <div v-else>
        <p><em>No Overdue Checkins</em></p>
    </div>
    
</div>

</template>
<script>

export default {

    components: {},

    props: { people: Array },

    methods: {},

}

</script>
<style scoped>
</style>