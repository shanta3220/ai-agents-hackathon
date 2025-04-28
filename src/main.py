import os
import chainlit as cl


from chainlit.utils import mount_chainlit
from fastapi import FastAPI


# Show the custom login page
async def show_login_page():
    await cl.Message(
        content="""
    <div id="login-page" style="
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        color: white;
        text-align: center;
        padding: 30px;
        font-family: 'Arial', sans-serif;
    ">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/512px-Google_%22G%22_Logo.svg.png" width="100px" style="margin-bottom: 20px;" />
        <h1 style="font-size: 36px; margin-bottom: 10px;">Welcome to Nuroxa AI Assistant</h1>
        <p style="font-size:20px; margin-bottom: 30px;">Sign in with Google to continue</p>
        <button id="login-btn" style="
            padding: 15px 30px;
            font-size: 18px;
            font-weight: bold;
            color: white;
            background: #ff6f91;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s ease;
            box-shadow: 0 4px 15px rgba(255,111,145,0.5);
        " onmouseover="this.style.background='#ff4f7a'; this.style.boxShadow='0 6px 20px rgba(255,79,122,0.7)';" onmouseout="this.style.background='#ff6f91'; this.style.boxShadow='0 4px 15px rgba(255,111,145,0.5)';" onclick="startLogin();">
            🚀 Login with Google
        </button>

        <div id="spinner" style="margin-top: 30px; display: none;">
            <div class="loader"></div>
            <p style="margin-top: 10px;">Authenticating...</p>
        </div>

        <style>
        .loader {
            border: 6px solid #f3f3f3;
            border-top: 6px solid #ff6f91;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            animation: spin 1s linear infinite;
            margin: auto;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        </style>

        <script>
        function startLogin() {
            document.getElementById('login-btn').style.display = 'none';
            document.getElementById('spinner').style.display = 'block';
            window.dispatchEvent(new CustomEvent('chainlit-action', { detail: { name: 'login' }}));
        }
        </script>

    </div>
    """
    ).send()

# Handle login button click
@cl.action_callback("login")
async def on_login_action(action):
    await cl.login()

# Handle logout
@cl.action_callback("logout")
async def on_logout_action(action):
    cl.user_session.set("user", None)
    await cl.Message(content="👋 You have been logged out!").send()
    await show_login_page()

# After successful login
@cl.on_user_login
async def on_user_login(user):
    cl.user_session.set("user", user)
    await cl.Message(
        content=f"""
        ✅ **Login successful!**

        Welcome **{user.name or user.email}** 👋
        """,
        actions=[
            cl.Action(
                name="logout",
                value="logout",
                label="🚪 Logout"
            )
        ]
    ).send()

# Chat start
@cl.on_chat_start
async def on_chat_start():
    if not cl.user_session.get("user"):
        await show_login_page()
    else:
        await cl.Message(
            content=f"🎯 Welcome back **{cl.user_session.get('user').name or cl.user_session.get('user').email}**!",
            actions=[
                cl.Action(
                    name="logout",
                    value="logout",
                    label="🚪 Logout"
                )
            ]
        ).send()

# Map environment to target path
env = os.getenv("ENV", "development")
target = {"development": "src/app.py", "production": "app.py"}.get(env)

app = FastAPI()
mount_chainlit(app=app, target=target, path="/user")
