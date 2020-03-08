import subprocess


def hello(name):
    print("hello" + name)


def main():
    hello("VSCODE")


if __name__ == "__main__":
    main()
    subprocess.call('pwd')
