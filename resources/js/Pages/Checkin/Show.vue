<template>

<div class="text-center">

    <p><strong>{{person.first_name}} {{person.last_name}}</strong></p>
    <p>&nbsp;</p>

    <div class="checkin-data" style="max-width: 350px">
        <div class="form-radio">
            <label for="">Employed</label>
            <p>{{checkin.employed ? "Yes" : "No"}}</p>
        </div>

        <div class="form-radio">
            <label for="">Enrolled</label>
            <p>{{checkin.enrolled ? "Yes" : "No"}}</p>
        </div>

        <div class="form-radio">
            <label for="">Caregiver</label>
            <p>{{checkin.caregiver ? "Yes" : "No"}}</p>
        </div>

        <div class="form-radio">
            <label for="">Occured</label>
            <p>{{checkin.occured}}</p>
        </div>

        <div class="form-group">
            <label for="">Notes</label>
            <p>{{checkin.notes}}</p>
        </div>
    </div>

    <div v-if="checkin.employed">
        <p>&nbsp;</p>
        <div v-if="employments.length > 0">
            <p v-for="job in employments"><strong>{{job.title}}</strong> at <strong>{{job.company}}</strong> <inertia-link :href="`/checkins/dropEmployment/${job.id}`" style="color: red">X</inertia-link></p>
        </div>
        <p v-else><em>No Employment added</em></p>
        <button class="isl-button" v-on:click="checkinTab = 'employed'">Add Employment</button>
    </div>

    <div v-if="checkin.enrolled">
        <p>&nbsp;</p>
        <div v-if="enrollments.length > 0">
            <p v-for="school in enrollments"><strong>{{school.school.name}} - ({{school.year}})</strong> <inertia-link :href="`/checkins/dropEnrollment/${school.id}`" style="color: red">X</inertia-link></p>
        </div>
        <p v-else><em>No Enrollment added</em></p>
        <button class="isl-button" v-on:click="checkinTab = 'enrolled'">Add Enrollment</button>
    </div>

    <div v-if="checkinTab == 'employed'" style="max-width: 350px">
        <br />
        <div class="form-table py-2">
            <label for="">Employer:</label>
            <span><select v-model="employmentForm.employer_id">
                <option v-for="row in employers" v-bind:value="row.id" :key="row.id">{{ row.name }}</option>
            </select></span>
        </div>

        <div class="form-table py-2">
            <label for="">Status:</label>
            <span><input type="text" ></span>
        </div>
        
        <div class="form-table py-2">
            <label for="">As an:</label>
            <span><input type="text" v-model="employmentForm.title"></span>
        </div>

        <div class="form-table py-2">
            <label for="">satisfaction:</label>
            <span><select v-model="employmentForm.satisfaction">
                <option v-bind:value="'LV'" :key="'LV'">Likes Very Much?</option>
                <option v-bind:value="'LS'" :key="'LS'">Likes Somewhat?</option>
            </select></span>
        </div>

        <div class="form-table py-2">
            <label for="">Start Date:</label>
            <span><input type="date" v-model="employmentForm.start_date"></span>
        </div>

        <div class="checkinTags">
            <span v-for="tag in employmentTags">
                <input type="checkbox" v-model="employmentForm.tags" v-bind:value="tag.id" :key="tag.id">
                <label for="">{{tag.tag}}</label>
            </span>
        </div>

        <p>&nbsp;</p>
        <button class="isl-button" v-on:click="saveEmployment()">Save Employment</button>
    </div>

    <div v-if="checkinTab == 'enrolled'" style="max-width: 350px">
        <br />
        <div class="form-table py-2">
            <label for="">School:</label>
            <span><select v-model="enrollmentForm.awarder_id">
                <option v-for="row in schools" v-bind:value="row.id" :key="row.id">{{ row.name }}</option>
            </select></span>
        </div>

        <div class="form-table py-2">
            <label for="">Status:</label>
            <span><select name="" id="">
                <option value="">Select an Option...</option>
            </select></span>
        </div>

        <div class="form-table py-2">
            <label for="">Cred. Goal:</label>
            <span><input type="text" ></span>
        </div>

        <div class="form-table py-2">
            <label for="">Studying:</label>
            <span><select name="" id="">
                <option value="">Select an Option...</option>
            </select></span>
        </div>

        <div class="form-table py-2">
            <label for="">Start Date:</label>
            <span><input type="date" v-model="enrollmentForm.start_date"></span>
        </div>

        <div class="checkinTags">
            <span v-for="tag in enrollmentTags">
                <input type="checkbox" v-model="enrollmentForm.tags" v-bind:value="tag.id" :key="tag.id">
                <label for="">{{tag.tag}}</label>
            </span>
        </div>

        <p>&nbsp;</p>
        <button class="isl-button" v-on:click="saveEnrollment()">Save Enrollment</button>
    </div>
    
</div>

</template>
<script>

export default {

    components: {},

    props: {
        person: Object,
        checkin: Object,
        schools: Array,
        employers: Array,
        employmentTags: Array,
        enrollmentTags: Array,
        employments: Array,
        enrollments: Array,
    },

    methods: {
        saveEmployment() {
            this.employmentForm.post("/checkins/employmentCheckin");
            this.checkinTab = 'none';
        },

        saveEnrollment() {
            this.enrollmentForm.post("/checkins/enrollmentCheckin");
            this.checkinTab = 'none';
        },

    },

    data: function() {
        return {
            focusList: [],
            addCredentialForm: false,
            activeDataTab: "alumnus",
            checkinTab: "none",

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

            employmentForm: this.$inertia.form(
                {
                    checkin_id: this.checkin.id,
                    employer_id: "",
                    start_date: "",
                    title: "",
                    tags: [],
                }
            ),

            enrollmentForm: this.$inertia.form(
                {
                    checkin_id: this.checkin.id,
                    awarder_id: "",
                    start_date: "",
                    tags: [],
                }
            )
        }
    },

}

</script>
<style scoped>
</style>