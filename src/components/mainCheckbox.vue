<script>
export default {
  props: ["idx", "name"],
};
</script>

<template>
  <p>{{ id }}</p>
  <!-- <div class="comp filter-list__item" v-for="(object, index) in objects"> -->
  <div class="comp filter-list__item">
    <input type="checkbox" :id="'bradList_00_' + idx" />
    <label
      :for="'bradList_00_' + idx"
      class="comp-btn comp-btn__is-square comp-btn__is-add-icon"
    >
      <span class="comp-btn__icon"></span>
      <span class="comp-btn__txt">{{ name }}</span>
    </label>
  </div>
</template>
