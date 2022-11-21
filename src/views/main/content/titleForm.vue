<template>
  <section class="l-section">
    <h2>Hemendra</h2>
    <span class="is-font-color50 fs-15">Welcome to Stylish</span>
    <form>
      <div class="comp">
        <input type="text" id="top_search" placeholder="Search..." />
        <label for="top_search"></label>
      </div>
      <button
        type="button"
        class="comp-btn comp-btn__is-square comp-btn__is-only-icon comp-btn__is-large is-point-color__back"
      >
        <span class="comp-btn__txt">voice recognition</span>
        <span class="comp-btn__icon"></span>
      </button>
    </form>
  </section>
</template>

<style lang="scss">
.page-profilter {
  form {
    display: flex;
    justify-content: space-between;
    margin-top: 1.5rem;

    > .comp {
      width: calc(100% - 6rem);
    }
  }

  .filter-list {
    display: flex;
    justify-content: start;
    &__item {
      margin-right: 1rem;
    }
  }
}
</style>
