(function() {var type_impls = {
"wasmtime_wasi":[["<details class=\"toggle implementors-toggle\" open><summary><section id=\"impl-Subscribe-for-InputStream\" class=\"impl\"><a class=\"src rightside\" href=\"src/wasmtime_wasi/stream.rs.html#171-179\">source</a><a href=\"#impl-Subscribe-for-InputStream\" class=\"anchor\">§</a><h3 class=\"code-header\">impl <a class=\"trait\" href=\"wasmtime_wasi/trait.Subscribe.html\" title=\"trait wasmtime_wasi::Subscribe\">Subscribe</a> for <a class=\"enum\" href=\"wasmtime_wasi/bindings/sync_io/io/streams/enum.InputStream.html\" title=\"enum wasmtime_wasi::bindings::sync_io::io::streams::InputStream\">InputStream</a></h3></section></summary><div class=\"impl-items\"><section id=\"method.ready\" class=\"method trait-impl\"><a class=\"src rightside\" href=\"src/wasmtime_wasi/stream.rs.html#172-178\">source</a><a href=\"#method.ready\" class=\"anchor\">§</a><h4 class=\"code-header\">fn <a href=\"wasmtime_wasi/trait.Subscribe.html#tymethod.ready\" class=\"fn\">ready</a>&lt;'life0, 'async_trait&gt;(\n    &amp;'life0 mut self\n) -&gt; <a class=\"struct\" href=\"https://doc.rust-lang.org/nightly/core/pin/struct.Pin.html\" title=\"struct core::pin::Pin\">Pin</a>&lt;<a class=\"struct\" href=\"https://doc.rust-lang.org/nightly/alloc/boxed/struct.Box.html\" title=\"struct alloc::boxed::Box\">Box</a>&lt;dyn <a class=\"trait\" href=\"https://doc.rust-lang.org/nightly/core/future/future/trait.Future.html\" title=\"trait core::future::future::Future\">Future</a>&lt;Output = <a class=\"primitive\" href=\"https://doc.rust-lang.org/nightly/std/primitive.unit.html\">()</a>&gt; + <a class=\"trait\" href=\"https://doc.rust-lang.org/nightly/core/marker/trait.Send.html\" title=\"trait core::marker::Send\">Send</a> + 'async_trait&gt;&gt;<div class=\"where\">where\n    Self: 'async_trait,\n    'life0: 'async_trait,</div></h4></section></div></details>","Subscribe","wasmtime_wasi::bindings::sync_io::_internal::wasi::filesystem::types::InputStream","wasmtime_wasi::bindings::wasi::cli::stdin::InputStream","wasmtime_wasi::bindings::wasi::filesystem::types::InputStream","wasmtime_wasi::bindings::wasi::sockets::tcp::InputStream"]]
};if (window.register_type_impls) {window.register_type_impls(type_impls);} else {window.pending_type_impls = type_impls;}})()