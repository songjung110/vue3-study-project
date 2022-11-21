<script>
import sectionComponent from "../../../components/sectionCOMP.vue";
import mainCheckbox from "../../../components/mainCheckbox.vue";
export default {
  data() {
    return {
      brands: [
        { id: 0, name: "Adidas" },
        { id: 1, name: "Nike" },
        { id: 2, name: "Fila" },
        { id: 3, name: "PUMA" },
        { id: 4, name: "SOME" },
        { id: 5, name: "Adidas2" },
        { id: 6, name: "Nike2" },
        { id: 7, name: "Fila2" },
      ],
    };
  },
  components: {
    sectionComponent,
    mainCheckbox,
  },
};
</script>
<template>
  <section-component>
    <template #title><h3>Choose Brand</h3></template>
    <template #default>
      <div class="scroll-container filter-list">
        <main-checkbox
          v-for="(brand, index) in brands"
          :idx="brand.id"
          :name="brand.name"
        ></main-checkbox>
      </div>
    </template>
  </section-component>
</template>
