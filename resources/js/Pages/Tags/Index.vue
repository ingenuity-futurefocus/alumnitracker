<template>

<div id="tag-management" style="max-width: 600px">

    <div class="text-center">
        <button class="isl-button" v-on:click="tabToShow = 'employment'">Employment Tags</button>
        <button class="isl-button" v-on:click="tabToShow = 'enrollment'">Enrollment Tags</button>
        <p>&nbsp;</p>
    </div>

    <div class="employment" v-if="tabToShow == 'employment'">
        <h2 style="text-align: center; padding: 0 0 32px">Employment Tag Management</h2>
        <div class="flex">
            <div class="text-xl font-bold pr-2 py-2">Tag Name:</div>
            <div class="flex-1">
                <input type="text" v-model="employmentTagForm.tag" class="width: 100%" v-on:keyup.enter="addEmploymentTag()">
            </div>
        </div>
        <div class="allTags">
            <span v-for="tag in employmentTags">
                {{tag.tag}} <inertia-link style="font-weight: bold" :href="`/tags/employment/delete/${tag.id}`">X</inertia-link>
            </span>            
        </div>
    </div>

    <div class="enrollment" v-if="tabToShow == 'enrollment'">
        <h2 style="text-align: center; padding: 0 0 32px">Enrollment Tag Management</h2>

        <div class="flex">
            <div class="text-xl font-bold pr-2 py-2">Tag Name:</div>
            <div class="flex-1">
                <input type="text" v-model="enrollmentTagForm.tag" class="width: 100%" v-on:keyup.enter="addEnrollmentTag()">
            </div>
        </div>
        <div class="allTags">
            <span v-for="tag in enrollmentTags">
                {{tag.tag}} <inertia-link style="font-weight: bold" :href="`/tags/enrollment/delete/${tag.id}`">X</inertia-link>
            </span>            
        </div>
    </div>

</div>

</template>
<script>

export default {

    props: {
        employmentTags: Array,
        enrollmentTags: Array,
    },

    data: function() {
        return {
            tabToShow: "employment",
            employmentTagForm: this.$inertia.form(
                {
                    tag: "",
                }
            ),

            enrollmentTagForm: this.$inertia.form(
                {
                    tag: "",
                }
            )
        }
    },

    methods: {
        addEmploymentTag() {
            this.employmentTagForm.post("/tags/employment/create");
        },

        addEnrollmentTag() {
            this.enrollmentTagForm.post("/tags/enrollment/create");
        }
    }

}

</script>
<style scoped>
</style>