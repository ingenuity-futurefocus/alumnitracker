<template>

<div class="text-center">

    <ul class="inline">

        <li class="third form-group p-2">
            <label for="">First Name</label>
            <input type="text" v-model="userForm.first_name">
        </li>

        <li class="third form-group p-2">
            <label for="">Last Name</label>
            <input type="text" v-model="userForm.last_name">
        </li>

        <li class="third form-group p-2">
            <label for="">Phone #</label>
            <input type="text" v-model="userForm.phone">
        </li>

        <li class="third form-group p-2">
            <label for="">Email</label>
            <input type="text" v-model="userForm.email">
        </li>

        <li class="third form-group p-2">
            <label for="">Address</label>
            <input type="text" v-model="userForm.mailing_street">
        </li>

        <li class="third form-group p-2">
            <label for="">Apt, Suite, Unit #</label>
            <input type="text" v-model="userForm.mailing_unit">
        </li>

        <li class="third form-group p-2">
            <label for="">City</label>
            <input type="text" v-model="userForm.mailing_city">
        </li>

        <li class="third form-group p-2">
            <label for="">State</label>
            <select v-model="userForm.mailing_state_id">
                <option v-for="state in states" v-bind:value="state.id" :key="state.id">{{state.abbreviation}}</option>
            </select>
        </li>

        <li class="third form-group p-2">
            <label for="">Zip Code</label>
            <input type="text" v-model="userForm.mailing_zip">
        </li>

    </ul>

    <p>&nbsp;</p>
    <div class="text-center">
        <inertia-link class="isl-button" :href="`/alumnus/details/${person.id}`">
            Cancel
        </inertia-link>

        <button class="isl-button" v-on:click="saveUser()">Save</button>
    </div>
    
</div>

</template>
<script>

export default {

    components: {},

    props: {
        person: Object,
        states: Array,
    },

    data: function() {
        return {
            userForm: this.$inertia.form(
                {
                    id: this.person.id,
                    first_name: this.person.first_name,
                    last_name: this.person.last_name,
                    phone: this.person.phone,
                    email: this.person.email,
                    mailing_street: this.person.mailing_street,
                    mailing_unit: this.person.mailing_unit,
                    mailing_city: this.person.mailing_city,
                    mailing_state_id: this.person.mailing_state_id,
                    mailing_zip: this.person.mailing_zip
                }
            )
        }
    },

    methods: {
        saveUser() {
            this.userForm.post("/alumnus/save");
        }
    }

}

</script>
<style scoped>
</style>