<template>

<div class="text-center">

    <!-- Checkin Data -->
    <div class="checkin-data" style="max-width: 350px">
        <p><strong>{{person.first_name}} is:</strong></p>

        <br/>
        <div class="form-radio">
            <label for="">Employed</label>
            <p>
                <input type="radio" v-model="checkinForm.employed" v-bind:value="true" :key="true">  <span>Yes</span>
                <input type="radio" v-model="checkinForm.employed" v-bind:value="false" :key="false"> <span>No</span>
            </p>
        </div>

        <br/>
        <div class="form-radio">
            <label for="">Enrolled</label>
            <p>
                <input type="radio" v-model="checkinForm.enrolled" v-bind:value="true" :key="true"> <span>Yes</span>
                <input type="radio" v-model="checkinForm.enrolled" v-bind:value="false" :key="false"> <span>No</span>
            </p>
        </div>

        <br/>
        <div class="form-radio">
            <label for="">Caregiver</label>
            <p>
                <input type="radio" v-model="checkinForm.caregiver" v-bind:value="true" :key="true"> <span>Yes</span>
                <input type="radio" v-model="checkinForm.caregiver" v-bind:value="false" :key="false"> <span>No</span>
            </p>
        </div>

        <br/>
        <div class="form-table">
            <label for="">Occured On</label>
            <span><input type="date" v-model="checkinForm.occured"></span>
        </div>

        <br />
        <div class="form-group">
            <label for="">Notes:</label>
            <input type="text" v-model="checkinForm.notes">
        </div>

        <p>&nbsp;</p>
        <button class="isl-button" v-on:click="saveCheckin()">Save Checkin</button>
        
    </div>
    
</div>

</template>
<script>

export default {

    components: {},

    props: { person: Object },

    methods: {
        saveCheckin() {
            this.checkinForm.post("/checkins/store");
        },
    },

    data: function() {
        return {
            checkinForm: this.$inertia.form(
                {
                    personID: this.person.id,
                    occured: "",
                    notes: "",
                    employed: false,
                    enrolled: false,
                    caregiver: false,
                    tags: [],
                }
            ),
        }
    },

}

</script>
<style scoped>
</style>