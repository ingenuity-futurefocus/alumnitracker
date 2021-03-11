<template>

<div class="text-center">

    <div class="cardWrap">
        <div v-for="school in schools">
            <inertia-link class="card" style="text-align: center; padding: 16px" :href="`/schools/${school.id}`">
                <strong>{{school.name}}</strong>
            </inertia-link>
        </div>
    </div>
    
</div>

</template>
<script>

export default {

    components: {},

    props: {
        schools: Array
    }

}

</script>
<style scoped>
</style>