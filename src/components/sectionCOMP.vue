<script>
export default {
  // props: ["idx", "data"],
};
</script>
<template>
  <section class="l-section">
    <div class="l-section__header">
      <slot name="title"></slot>
      <div class="l-section__header__right">
        <button type="button">
          <span class="is-font-color50 fs-13">View All</span>
        </button>
      </div>
    </div>
    <div class="l-section__content">
      <slot name="default"></slot>
    </div>
  </section>
</template>
