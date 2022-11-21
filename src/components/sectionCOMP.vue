<script>
// 섹션 - 컨텐츠 구성 컴포넌트
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

<style lang="scss">
.l-section {
  margin-bottom: 1.5rem;
  &__header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 1.5rem;
  }
}
</style>
