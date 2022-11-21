<script></script>

<template>
  <header>
    <nav>
      <button
        type="button"
        class="comp-btn comp-btn__is-round comp-btn__is-only-icon nav-btn"
      >
        <span class="comp-btn__txt">menu</span>
        <span class="comp-btn__icon"></span>
      </button>
      <RouterLink
        to="/shop"
        class="comp-btn comp-btn__is-round comp-btn__is-only-icon nav-btn"
      >
        <span class="comp-btn__txt">shop</span>
        <span class="comp-btn__icon"></span
      ></RouterLink>
    </nav>
  </header>
</template>

<style lang="scss">
header {
  position: sticky;
  top: 0;
  left: 0;
  width: 100%;
  background: transparent;
  z-index: 10;
  > nav {
    display: flex;
    justify-content: space-between;
    padding: 0.5rem 2rem 0;
  }
}
</style>
