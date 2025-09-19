defmodule KibetiWeb.IndexLive do
  use KibetiWeb, :live_view

  def mount(_, _, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <Layouts.app flash={@flash}>
      <div class="font-bold text-3xl">
        <h1>Welcome to Kibeti</h1>
      </div>
      <div>
        <h2>Our Unique Value Proposition</h2>
      </div>
      <div class="container grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 border border-black">
        <div class="p-6">
          <h2 class="font-bold text-xl">1. Financial Assistance</h2>
          <p>
            It's very easy to get financial assistance on the go via our in-buit chat rooms or whatsapp video/audio calls.
          </p>
        </div>
        <div class="p-6">
          <h2 class="font-bold text-xl">2. Financial Tools</h2>
          <p>
            Get started using well documented and intuitive financial tools. Browse our catalog of Financial Tools.
          </p>
        </div>
        <div class="p-6">
          <h2 class="font-bold text-xl">3. Financial Articles</h2>
          <p>
            Be on the know on important financial matters happening in your environment. Read important news, case studies, research papers, economic reports and stories.
          </p>
        </div>
        <div class="p-6">
          <h2 class="font-bold text-xl">4. 24/7 Support</h2>
          <p>
            Get a premium subscription and enjoy 24/7 financial assistance. Beyond the typical 9 to 5pm.
          </p>
        </div>
        <div class="p-6">
          <h2 class="font-bold text-xl">5. Financial Intelligence</h2>
          <p>Say goodbye to mental math, say hi financial AI. Get answers in a matter of seconds.</p>
        </div>
      </div>
    </Layouts.app>
    """
  end
end
