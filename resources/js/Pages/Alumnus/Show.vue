<template>

<div class="text-center">

    <div class="contact text-left">
        <p>
            <strong>{{person.first_name}} {{person.last_name}}</strong> <span><inertia-link :href="`/alumnus/edit/${person.id}`">Edit</inertia-link></span>
        </p>
        <br/>
        <p><strong>Phone:</strong> <span>{{person.phone}}</span></p>
        <p><strong>Email:</strong> <span>{{person.email}}</span></p>
        <br/>
        <p><strong>Address:</strong> <span>{{address['line1']}}</span></p>
        <p><strong></strong> <span>{{address['line2']}}</span></p>
    </div>

    <ul class="inline gutters">
        <li><a href="#" v-on:click="changeTabs('alumnus')"><strong>Alumnus Of</strong></a></li>
        <li><a href="#" v-on:click="changeTabs('checkins')"><strong>Check - Ins</strong></a></li>
        <li><a href="#" v-on:click="changeTabs('credentials')"><strong>Credentials</strong></a></li>
    </ul>

    <!-- Alumnus Data -->
    <div class="alumnus-data" v-if="activeDataTab == 'alumnus'">
        <ul v-if="alumnus" class="cardWrap mx-auto text-left">
            <li v-for="row in alumnus" class="card font-bold">
                <p>{{row.organization}}</p>
                <p>{{row.program}}</p>
                <p>{{row.year}}</p>
            </li>
        </ul>
        <p v-else><em>No Alumnus data to display</em></p>
    </div>

    <!-- Checkin Data -->
    <div class="checkin-data" v-if="activeDataTab == 'checkins'" style="max-width: 350px">

        <p>As of: Today's Date</p>

        <div v-if="checkinTab === 'none'">
            
            <inertia-link class="isl-button" :href="`/checkins/create/${person.id}`">Add Check-In</inertia-link>
            <br/>
            <br/>

            <ul v-if="checkins" class="cardWrap mx-auto text-left">
                <li class="card" v-if="checkinOverdue()">
                    Next: <span class="text-red-700 font-bold">OVERDUE</span><br/>{{duedate}}
                </li>
                <li v-for="row in checkins" class="card">
                    <p>{{row.date}} (with {{row.user}})</p>
                    <p v-if="row.needWork"><em>Needs Work Added</em></p>
                    <p v-if="row.needSchool"><em>Needs School Added</em></p>
                    <p>&nbsp;</p>
                    <inertia-link class="slim-button" :href="`/checkins/show/${row.id}`">Edit</inertia-link>
                </li>
            </ul>
            <ul v-else class="cardWrap mx-auto text-left">
                <li class="card" v-if="checkinOverdue()">
                    Next: <span class="text-red-700 font-bold">OVERDUE</span><br/>{{duedate}}
                </li>
            </ul>
        </div>
        
    </div>

    <!-- Credential Data -->
    <div class="credential-data" v-if="activeDataTab == 'credentials'">
        <div v-if="addCredentialForm == false">

            <button class="isl-button" v-on:click="addCredentialForm = true">Add New Credential</button>
            <br />
            <br />

            <ul v-if="earnedCredentials" class="cardWrap mx-auto text-left">
                <li v-for="row in earnedCredentials" class="card font-bold">
                    <p>{{row.type}}</p>
                    <p>{{row.name}}</p>
                    <p>{{row.org}}</p>
                    <p>{{row.date}}</p>
                </li>
            </ul>
            <p v-else><em>No Credential data to display</em></p>
        </div>

        <div style="max-width: 350px;" v-if="addCredentialForm">
            <div class="form-group mb-3">
                <label for="">School</label>
                <select v-model="credentialForm.school" v-on:change="updateFocusList()">
                    <option v-for="row in schools" v-bind:value="row.id" :key="row.id">{{ row.name }}</option>
                </select>
            </div>

            <div class="form-group mb-3">
                <label for="">Type</label>
                <select v-model="credentialForm.type" v-on:change="updateFocusList()">
                    <option v-for="row in credentialTypes" v-bind:value="row.id" :key="row.id">{{ row.type }}</option>
                </select>
            </div>

            <div class="form-group mb-3">
                <label for="">Focus</label>
                <select v-model="credentialForm.focus">
                    <option v-for="row in focusList" v-bind:value="row.id" :key="row.id">{{ row.focus }}</option>
                </select>
            </div>

            <div class="form-group mb-3">
                <label for="">Date</label>
                <input type="date" v-model="credentialForm.date">
            </div>

            <br />
            <button class="isl-button" v-on:click="saveCredential()">Save Credential</button>
        </div>
    </div>
    
</div>

</template>
<script>

export default {

    components: {},

    props: {
        person: Object,
        address: Object,
        alumnus: Array,
        checkins: Array,
        duedate: String,
        schools: Array,
        employers: Array,
        employmentTags: Array,
        enrollmentTags: Array,
        availableCredentials: Array,
        earnedCredentials: Array,
        credentialTypes: Array,
    },

    methods: {
        changeTabs(tabName) { this.activeDataTab = tabName; },

        checkinOverdue() {
            var duedate = new Date(this.duedate);
            var current = new Date();
            return (duedate < current);
        },

        saveCredential() {
            this.credentialForm.post("/alumnus/saveCredential");
            this.addCredentialForm = false;
        },

        updateFocusList() {
            this.focusList = (this.credentialForm.school)
                ? this.availableCredentials.filter(cred => cred.awarder_id == this.credentialForm.school)
                : [];

            this.focusList = (this.credentialForm.type)
                ? this.focusList.filter(cred => cred.type_id == this.credentialForm.type)
                : [];
        },

        addEmployment(checkinID) {
            this.employmentForm.checkin_id = checkinID;
            this.checkinTab = 'employed';
        },

        addEnrollment(checkinID) {
            this.enrollmentForm.checkin_id = checkinID;
            this.checkinTab = 'enrolled';
        }
    },

    data: function() {
        return {
            focusList: [],
            addCredentialForm: false,
            activeDataTab: "alumnus",
            checkinTab: "none",

            credentialForm: this.$inertia.form(
                {
                    personID: this.person.id,
                    type: "",
                    focus: "",
                    school: "",
                    date: "",
                }
            ),

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
                    checkin_id: "",
                    employer_id: "",
                    start_date: "",
                    title: "",
                    tags: [],
                }
            ),

            enrollmentForm: this.$inertia.form(
                {
                    checkin_id: "",
                    awarder_id: "",
                    start_date: "",
                }
            )
        }
    },

}

</script>
<style scoped>
</style>