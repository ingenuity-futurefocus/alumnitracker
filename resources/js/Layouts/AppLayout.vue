<template>

<main>
    <aside>
        <h3>Hi, Deborah</h3>

        <ul class="navigation">
            <li>
                <inertia-link class="isl-button" href="/">Dashboard</inertia-link>
            </li>
            <li>
                <inertia-link class="isl-button" href="/">Search For Alumni</inertia-link>
            </li>
            <li>
                <inertia-link class="isl-button" href="/">Overdue Checkins</inertia-link>
            </li>
            <li>
                <inertia-link class="isl-button" href="/schools">School Management</inertia-link>
            </li>
            <li>
                <inertia-link class="isl-button" href="/tags">Tag Management</inertia-link>
            </li>
            <li>
                <inertia-link class="isl-button" href="/">User Management</inertia-link>
            </li>
        </ul>
    </aside>
    <section>
        <div class="container">
            
            <div class="my-8">
                <input type="text" v-model="alumnusForm.query" class="width: 100%" placeholder="Search for Alumni by First or Last Name or for Alumnus of a specific school" v-on:keyup.enter="searchAlumnus()">
            </div>

            <div class="content">
                <slot></slot>
            </div>
        </div>
    </section>
</main>  

</template>

<script>

import JetInput from "../Jetstream/Input";

export default {
    data: function() {
        return {
            alumnusForm: this.$inertia.form(
                {
                    query: "",
                }
            )
        }
    },

    methods: {
        searchAlumnus() {
            this.alumnusForm.post("/alumnus/filter");
        }
    }
}
    
</script>
